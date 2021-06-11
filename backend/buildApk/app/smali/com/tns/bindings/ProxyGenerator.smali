.class public Lcom/tns/bindings/ProxyGenerator;
.super Ljava/lang/Object;
.source "ProxyGenerator.java"


# static fields
.field public static IsLogEnabled:Z


# instance fields
.field private dump:Lcom/tns/bindings/Dump;

.field private path:Ljava/lang/String;

.field private proxyThumb:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tns/bindings/ProxyGenerator;->IsLogEnabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/tns/bindings/ProxyGenerator;->path:Ljava/lang/String;

    .line 21
    new-instance v0, Lcom/tns/bindings/Dump;

    invoke-direct {v0}, Lcom/tns/bindings/Dump;-><init>()V

    iput-object v0, p0, Lcom/tns/bindings/ProxyGenerator;->dump:Lcom/tns/bindings/Dump;

    .line 22
    return-void
.end method

.method private saveProxy(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .param p1, "proxyName"    # Ljava/lang/String;
    .param p2, "proxyBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tns/bindings/ProxyGenerator;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 62
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v1, "stream":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 64
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public generateProxy(Ljava/lang/String;Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/HashSet;Ljava/util/HashSet;Z[Lcom/tns/bindings/AnnotationDescriptor;)Ljava/lang/String;
    .locals 7
    .param p1, "proxyName"    # Ljava/lang/String;
    .param p2, "classToProxy"    # Lcom/tns/bindings/desc/ClassDescriptor;
    .param p5, "isInterface"    # Z
    .param p6, "annotations"    # [Lcom/tns/bindings/AnnotationDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet<",
            "Lcom/tns/bindings/desc/ClassDescriptor;",
            ">;Z[",
            "Lcom/tns/bindings/AnnotationDescriptor;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    .local p3, "methodOverrides":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, "implementedInterfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/tns/bindings/desc/ClassDescriptor;>;"
    new-instance v1, Lorg/ow2/asmdex/ApplicationWriter;

    invoke-direct {v1}, Lorg/ow2/asmdex/ApplicationWriter;-><init>()V

    .line 30
    .local v1, "aw":Lorg/ow2/asmdex/ApplicationWriter;
    invoke-virtual {v1}, Lorg/ow2/asmdex/ApplicationWriter;->visit()V

    .line 32
    iget-object v0, p0, Lcom/tns/bindings/ProxyGenerator;->dump:Lcom/tns/bindings/Dump;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/tns/bindings/Dump;->generateProxy(Lorg/ow2/asmdex/ApplicationWriter;Ljava/lang/String;Lcom/tns/bindings/desc/ClassDescriptor;Ljava/util/HashSet;Ljava/util/HashSet;[Lcom/tns/bindings/AnnotationDescriptor;)V

    .line 34
    invoke-virtual {v1}, Lorg/ow2/asmdex/ApplicationWriter;->visitEnd()V

    .line 35
    invoke-virtual {v1}, Lorg/ow2/asmdex/ApplicationWriter;->toByteArray()[B

    move-result-object v0

    .line 39
    .local v0, "generatedBytes":[B
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    move-object v2, p1

    .local v2, "proxyFileName":Ljava/lang/String;
    goto :goto_0

    .line 42
    .end local v2    # "proxyFileName":Ljava/lang/String;
    :cond_0
    invoke-interface {p2}, Lcom/tns/bindings/desc/ClassDescriptor;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    const/16 v4, 0x5f

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 43
    .restart local v2    # "proxyFileName":Ljava/lang/String;
    if-nez p5, :cond_1

    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/tns/bindings/ProxyGenerator;->proxyThumb:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 47
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/tns/bindings/ProxyGenerator;->proxyThumb:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 51
    :cond_2
    :goto_0
    sget-boolean v3, Lcom/tns/bindings/ProxyGenerator;->IsLogEnabled:Z

    if-eqz v3, :cond_3

    .line 52
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generator: Saving proxy with file name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/tns/bindings/ProxyGenerator;->saveProxy(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "proxyPath":Ljava/lang/String;
    return-object v3
.end method

.method public setProxyThumb(Ljava/lang/String;)V
    .locals 0
    .param p1, "proxyThumb"    # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/tns/bindings/ProxyGenerator;->proxyThumb:Ljava/lang/String;

    .line 26
    return-void
.end method
