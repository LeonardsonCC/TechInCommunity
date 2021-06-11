.class public Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "EnclosingMethodSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private annotationName:Ljava/lang/String;

.field private classId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;->classId:I

    .line 67
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassId()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;->classId:I

    return v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 2
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 74
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;

    .line 75
    .local v0, "eav":Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/EnclosingMethodAnnotationVisitor;->getClassId()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/specificAnnotationParser/EnclosingMethodSpecificAnnotationParser;->classId:I

    .line 76
    return-void
.end method
