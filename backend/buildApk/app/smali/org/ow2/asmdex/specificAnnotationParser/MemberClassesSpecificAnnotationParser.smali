.class public Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "MemberClassesSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private annotationName:Ljava/lang/String;

.field private innerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "annotationName"    # Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerClasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;->innerClasses:Ljava/util/List;

    return-object v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 2
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 75
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/MemberClassesAnnotationVisitor;

    .line 76
    .local v0, "mcav":Lorg/ow2/asmdex/specificAnnotationVisitors/MemberClassesAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/MemberClassesAnnotationVisitor;->getInnerClasses()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/specificAnnotationParser/MemberClassesSpecificAnnotationParser;->innerClasses:Ljava/util/List;

    .line 77
    return-void
.end method
