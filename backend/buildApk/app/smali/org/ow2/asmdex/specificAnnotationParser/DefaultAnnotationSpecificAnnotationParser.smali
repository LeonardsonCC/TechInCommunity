.class public Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "DefaultAnnotationSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private annotationName:Ljava/lang/String;

.field private annotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getAnnotationVisitor()Lorg/ow2/asmdex/AnnotationVisitor;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;->annotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    return-object v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 0
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 72
    iput-object p3, p0, Lorg/ow2/asmdex/specificAnnotationParser/DefaultAnnotationSpecificAnnotationParser;->annotationVisitor:Lorg/ow2/asmdex/AnnotationVisitor;

    .line 73
    return-void
.end method
