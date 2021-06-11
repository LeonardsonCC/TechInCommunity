.class public Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "InnerClassSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private accessFlagsInnerClass:I

.field private annotationName:Ljava/lang/String;

.field private simpleNameInnerClass:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->simpleNameInnerClass:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->accessFlagsInnerClass:I

    .line 58
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public getAccessFlagsInnerClass()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->accessFlagsInnerClass:I

    return v0
.end method

.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimpleNameInnerClass()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->simpleNameInnerClass:Ljava/lang/String;

    return-object v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 2
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 82
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;

    .line 83
    .local v0, "iav":Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;->getAccess()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->accessFlagsInnerClass:I

    .line 84
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/InnerClassAnnotationVisitor;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/specificAnnotationParser/InnerClassSpecificAnnotationParser;->simpleNameInnerClass:Ljava/lang/String;

    .line 85
    return-void
.end method
