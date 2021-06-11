.class public Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;
.super Ljava/lang/Object;
.source "ExceptionSpecificAnnotationParser.java"

# interfaces
.implements Lorg/ow2/asmdex/specificAnnotationParser/ISpecificAnnotationParser;


# instance fields
.field private annotationName:Ljava/lang/String;

.field private exceptions:Ljava/util/List;
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

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public getAnnotationName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;->annotationName:Ljava/lang/String;

    return-object v0
.end method

.method public getExceptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;->exceptions:Ljava/util/List;

    return-object v0
.end method

.method public treat(Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;Lorg/ow2/asmdex/ApplicationReader;Lorg/ow2/asmdex/AnnotationVisitor;)V
    .locals 2
    .param p1, "dexFile"    # Lorg/ow2/asmdex/lowLevelUtils/DexFileReader;
    .param p2, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;
    .param p3, "annotationVisitor"    # Lorg/ow2/asmdex/AnnotationVisitor;

    .line 76
    move-object v0, p3

    check-cast v0, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;

    .line 77
    .local v0, "eav":Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;
    invoke-virtual {v0}, Lorg/ow2/asmdex/specificAnnotationVisitors/ExceptionAnnotationVisitor;->getClassNames()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/ow2/asmdex/specificAnnotationParser/ExceptionSpecificAnnotationParser;->exceptions:Ljava/util/List;

    .line 78
    return-void
.end method
