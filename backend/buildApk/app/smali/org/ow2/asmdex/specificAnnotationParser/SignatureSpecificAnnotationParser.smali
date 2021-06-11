.class public Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "SignatureSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private annotationName:Ljava/lang/String;

.field private signature:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getSignature()[Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;->signature:[Ljava/lang/String;

    return-object v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 6
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 77
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;

    .line 78
    .local v0, "sav":Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/SignatureAnnotationVisitor;->getSignature()Ljava/util/List;

    move-result-object v1

    .line 79
    .local v1, "signatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;->signature:[Ljava/lang/String;

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 82
    .local v4, "string":Ljava/lang/String;
    iget-object v5, p0, Lorg/ow2/asmdex/specificAnnotationParser/SignatureSpecificAnnotationParser;->signature:[Ljava/lang/String;

    aput-object v4, v5, v2

    .line 83
    nop

    .end local v4    # "string":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    return-void
.end method
