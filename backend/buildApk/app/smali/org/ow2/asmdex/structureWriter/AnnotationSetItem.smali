.class public Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
.super Ljava/lang/Object;
.source "AnnotationSetItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;",
        ">;"
    }
.end annotation


# instance fields
.field private annotationItems:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
            ">;"
        }
    .end annotation
.end field

.field private hashcode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->hashcode:I

    return-void
.end method


# virtual methods
.method public addAnnotationItem(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 79
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->hashcode:I

    .line 81
    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)I
    .locals 5
    .param p1, "asi"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 145
    if-ne p0, p1, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureWriter/AnnotationItem;>;"
    iget-object v1, p1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    .local v1, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureWriter/AnnotationItem;>;"
    const/4 v2, 0x0

    .line 152
    .local v2, "result":I
    :goto_0
    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->compareTo(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)I

    move-result v2

    goto :goto_0

    .line 156
    :cond_1
    if-nez v2, :cond_3

    .line 157
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 158
    const/4 v2, -0x1

    goto :goto_1

    .line 159
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    const/4 v2, 0x1

    .line 164
    :cond_3
    :goto_1
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    if-ne p0, p1, :cond_0

    .line 111
    const/4 v0, 0x1

    return v0

    .line 114
    :cond_0
    const/4 v0, 0x0

    .line 116
    .local v0, "result":Z
    instance-of v1, p1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    if-eqz v1, :cond_1

    .line 117
    move-object v1, p1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 121
    .local v1, "secondAnnotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    iget-object v3, v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 122
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    iget-object v3, v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 125
    .end local v1    # "secondAnnotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    :cond_1
    return v0
.end method

.method public getAnnotationItems()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getNbAnnotationItems()I
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 130
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->hashcode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 131
    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "result":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 136
    .local v2, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 137
    .end local v2    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    goto :goto_0

    .line 138
    :cond_1
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->hashcode:I

    .line 139
    return v0
.end method
