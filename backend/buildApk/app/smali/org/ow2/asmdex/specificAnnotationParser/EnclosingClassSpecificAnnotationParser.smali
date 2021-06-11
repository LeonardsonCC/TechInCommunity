.class public Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "EnclosingClassSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private annotationName:Ljava/lang/String;

.field private className:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;->className:Ljava/lang/String;

    return-object v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 2
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 73
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;

    .line 74
    .local v0, "eav":Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingClassAnnotationVisitor;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingClassSpecificAnnotationParser;->className:Ljava/lang/String;

    .line 75
    return-void
.end method
