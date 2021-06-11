.class public Lorg/ow2/asmdex/structureWriter/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# instance fields
.field private annotationDirectoryItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private annotationItems:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
            ">;"
        }
    .end annotation
.end field

.field private annotationItemsToOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetItems:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetItemsToOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetRefLists:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;",
            ">;"
        }
    .end annotation
.end field

.field private annotationSetRefListsToOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private classNameToClassDefinitionItem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private classesToAnnotationDirectoryItemOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation
.end field

.field private methods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation
.end field

.field private orderedClasses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;",
            ">;"
        }
    .end annotation
.end field

.field private orderedFields:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation
.end field

.field private orderedMethods:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation
.end field

.field private orderedPrototypes:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/Prototype;",
            ">;"
        }
    .end annotation
.end field

.field private orderedTypeList:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/TypeList;",
            ">;"
        }
    .end annotation
.end field

.field private prototypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Prototype;",
            "Lorg/ow2/asmdex/structureWriter/Prototype;",
            ">;"
        }
    .end annotation
.end field

.field private prototypesToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Prototype;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedFieldsToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedMethodsToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedStringsToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedTypesToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private staticValuesEncodedArrayItemOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private strings:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private symbolicFieldsIndexToResolvedFieldsIndex:[I

.field private symbolicFieldsToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private symbolicMethodsIndexToResolvedMethodsIndex:[I

.field private symbolicMethodsToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private symbolicStringsIndexToResolvedStringsIndex:[I

.field private symbolicStringsToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private symbolicTypesIndexToResolvedTypesIndex:[I

.field private symbolicTypesToIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private typeList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/ow2/asmdex/structureWriter/TypeList;",
            ">;"
        }
    .end annotation
.end field

.field private typeListsToOffsets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/TypeList;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useSymbolicElements:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsToIndexes:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesToIndexes:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsToIndexes:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsToIndexes:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedStringsToIndexes:Ljava/util/HashMap;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedTypesToIndexes:Ljava/util/HashMap;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedMethodsToIndexes:Ljava/util/HashMap;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedFieldsToIndexes:Ljava/util/HashMap;

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypesToIndexes:Ljava/util/HashMap;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeListsToOffsets:Ljava/util/HashMap;

    .line 145
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->strings:Ljava/util/TreeSet;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypes:Ljava/util/HashMap;

    .line 162
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->types:Ljava/util/TreeSet;

    .line 168
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->fields:Ljava/util/HashMap;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->methods:Ljava/util/HashMap;

    .line 195
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeList:Ljava/util/HashSet;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->staticValuesEncodedArrayItemOffsets:Ljava/util/HashMap;

    .line 220
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItems:Ljava/util/TreeSet;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItemsToOffsets:Ljava/util/HashMap;

    .line 231
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItems:Ljava/util/TreeSet;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItemsToOffsets:Ljava/util/HashMap;

    .line 241
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefLists:Ljava/util/HashSet;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefListsToOffsets:Ljava/util/HashMap;

    .line 252
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classesToAnnotationDirectoryItemOffsets:Ljava/util/HashMap;

    .line 261
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    .line 266
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationDirectoryItems:Ljava/util/HashSet;

    return-void
.end method

.method private buildIndexMaps()V
    .locals 5

    .line 1004
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    .line 1008
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedStringsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1009
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsIndexToResolvedStringsIndex:[I

    .line 1010
    const/4 v0, 0x0

    .line 1011
    .local v0, "index":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->strings:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1012
    .local v2, "string":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedStringsToIndexes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1015
    .local v3, "symbolicIndex":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsIndexToResolvedStringsIndex:[I

    aput v0, v4, v3

    .line 1017
    nop

    .end local v2    # "string":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1018
    goto :goto_0

    .line 1021
    .end local v3    # "symbolicIndex":I
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedTypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1022
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->types:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesIndexToResolvedTypesIndex:[I

    .line 1023
    const/4 v0, 0x0

    .line 1024
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->types:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1025
    .local v2, "type":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedTypesToIndexes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1028
    .restart local v3    # "symbolicIndex":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesIndexToResolvedTypesIndex:[I

    aput v0, v4, v3

    .line 1030
    nop

    .end local v2    # "type":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1031
    goto :goto_1

    .line 1034
    .end local v3    # "symbolicIndex":I
    :cond_1
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1035
    const/4 v0, 0x0

    .line 1036
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedPrototypes:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 1037
    .local v2, "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypesToIndexes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    nop

    .end local v2    # "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    add-int/lit8 v0, v0, 0x1

    .line 1039
    goto :goto_2

    .line 1042
    :cond_2
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedFieldsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1043
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->fields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsIndexToResolvedFieldsIndex:[I

    .line 1044
    const/4 v0, 0x0

    .line 1045
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedFields:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Field;

    .line 1046
    .local v2, "field":Lorg/ow2/asmdex/structureWriter/Field;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedFieldsToIndexes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1049
    .restart local v3    # "symbolicIndex":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsIndexToResolvedFieldsIndex:[I

    aput v0, v4, v3

    .line 1051
    nop

    .end local v2    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    add-int/lit8 v0, v0, 0x1

    .line 1052
    goto :goto_3

    .line 1056
    .end local v3    # "symbolicIndex":I
    :cond_3
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedMethodsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1057
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedMethods:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsIndexToResolvedMethodsIndex:[I

    .line 1058
    const/4 v0, 0x0

    .line 1059
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedMethods:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Method;

    .line 1060
    .local v2, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedMethodsToIndexes:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1063
    .restart local v3    # "symbolicIndex":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsIndexToResolvedMethodsIndex:[I

    aput v0, v4, v3

    .line 1065
    nop

    .end local v2    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    add-int/lit8 v0, v0, 0x1

    .line 1066
    goto :goto_4

    .line 1067
    .end local v3    # "symbolicIndex":I
    :cond_4
    return-void
.end method

.method private generateSortedCollections()V
    .locals 2

    .line 989
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeList:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedTypeList:Ljava/util/TreeSet;

    .line 990
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->fields:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedFields:Ljava/util/TreeSet;

    .line 991
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypes:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedPrototypes:Ljava/util/TreeSet;

    .line 992
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->methods:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedMethods:Ljava/util/TreeSet;

    .line 993
    invoke-direct {p0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->sortClasses()V

    .line 994
    return-void
.end method

.method private sortClassRec(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)V
    .locals 6
    .param p1, "cdi"    # Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 1094
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedClasses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1095
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getSuperClassName()Ljava/lang/String;

    move-result-object v0

    .line 1097
    .local v0, "superClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1098
    invoke-direct {p0, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->sortClassRecString(Ljava/lang/String;)V

    .line 1101
    :cond_0
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getInterfaces()Lorg/ow2/asmdex/structureWriter/TypeList;

    move-result-object v1

    .line 1102
    .local v1, "tl":Lorg/ow2/asmdex/structureWriter/TypeList;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/TypeList;->getTypeList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 1103
    .local v5, "className":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->sortClassRecString(Ljava/lang/String;)V

    .line 1102
    .end local v5    # "className":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedClasses:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1108
    .end local v0    # "superClass":Ljava/lang/String;
    .end local v1    # "tl":Lorg/ow2/asmdex/structureWriter/TypeList;
    :cond_2
    return-void
.end method

.method private sortClassRecString(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 1111
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 1114
    .local v0, "ncdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedClasses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1115
    invoke-direct {p0, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->sortClassRec(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)V

    .line 1117
    :cond_0
    return-void
.end method

.method private sortClasses()V
    .locals 3

    .line 1074
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedClasses:Ljava/util/ArrayList;

    .line 1076
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 1077
    .local v0, "classes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 1078
    .local v2, "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    invoke-direct {p0, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->sortClassRec(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)V

    .line 1079
    .end local v2    # "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    goto :goto_0

    .line 1081
    :cond_0
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedClasses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 1083
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Sorted Classes list doesn\'t match the original list !"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "classes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;>;"
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1084
    .restart local v0    # "classes":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;>;"
    :catch_0
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1086
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1090
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnnotationDirectoryItem(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)V
    .locals 1
    .param p1, "annotationDirectoryItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    .line 971
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationDirectoryItems:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 972
    return-void
.end method

.method public addAnnotationItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)V
    .locals 1
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 917
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 918
    return-void
.end method

.method public addAnnotationSetItemNoSizeCheck(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V
    .locals 1
    .param p1, "annotationSetItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 938
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 939
    return-void
.end method

.method public addAnnotationSetItemToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V
    .locals 1
    .param p1, "annotationSetItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 926
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v0

    if-lez v0, :cond_0

    .line 927
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItems:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_0
    return-void
.end method

.method public addAnnotationSetRefListToConstantPool(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;)V
    .locals 4
    .param p1, "annotationSetRefList"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 947
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getNbAnnotationSetItemsUsed()I

    move-result v0

    if-lez v0, :cond_0

    .line 948
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefLists:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 951
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getAnnotationSetItems()[Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 952
    .local v3, "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    invoke-virtual {p0, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addAnnotationSetItemNoSizeCheck(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)V

    .line 951
    .end local v3    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 955
    :cond_0
    return-void
.end method

.method public addClassToConstantPool(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    .locals 9
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "superName"    # Ljava/lang/String;
    .param p3, "access"    # I
    .param p4, "interfaceNames"    # [Ljava/lang/String;
    .param p5, "signature"    # [Ljava/lang/String;

    .line 892
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 893
    new-instance v0, Lorg/ow2/asmdex/structureWriter/TypeList;

    invoke-direct {v0, p4}, Lorg/ow2/asmdex/structureWriter/TypeList;-><init>([Ljava/lang/String;)V

    .line 894
    .local v0, "interfaceTypeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    new-instance v8, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;-><init>(Ljava/lang/String;Ljava/lang/String;ILorg/ow2/asmdex/structureWriter/TypeList;[Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 897
    .local v1, "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 901
    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0, p5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringsToConstantPool([Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeListToConstantPool(Lorg/ow2/asmdex/structureWriter/TypeList;)V

    .line 905
    return-object v1

    .line 907
    .end local v0    # "interfaceTypeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    .end local v1    # "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    return-object v0
.end method

.method public addFieldToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/structureWriter/Field;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "classOwningName"    # Ljava/lang/String;
    .param p4, "access"    # I
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "value"    # Ljava/lang/Object;

    .line 848
    new-instance v0, Lorg/ow2/asmdex/structureWriter/Field;

    invoke-direct {v0, p1, p2, p3}, Lorg/ow2/asmdex/structureWriter/Field;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    .local v0, "field":Lorg/ow2/asmdex/structureWriter/Field;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->fields:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/Field;

    .line 850
    .local v1, "foundField":Lorg/ow2/asmdex/structureWriter/Field;
    if-nez v1, :cond_0

    .line 851
    invoke-virtual {v0, p4, p5, p6, p0}, Lorg/ow2/asmdex/structureWriter/Field;->init(I[Ljava/lang/String;Ljava/lang/Object;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 852
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->fields:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 854
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0, p3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0, p5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringsToConstantPool([Ljava/lang/String;)V

    .line 861
    return-object v0

    .line 869
    :cond_0
    const/high16 v2, 0x40000

    and-int/2addr v2, p4

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Field;->isUnknown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 870
    invoke-virtual {v1, p4, p5, p6, p0}, Lorg/ow2/asmdex/structureWriter/Field;->completeInformation(I[Ljava/lang/String;Ljava/lang/Object;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 873
    :cond_1
    return-object v1
.end method

.method public addMethodToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Method;
    .locals 5
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "methodDescriptor"    # Ljava/lang/String;
    .param p4, "access"    # I
    .param p5, "signature"    # [Ljava/lang/String;
    .param p6, "exceptionNames"    # [Ljava/lang/String;

    .line 800
    invoke-virtual {p0, p3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addPrototypeToConstantPool(Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Prototype;

    move-result-object v0

    .line 801
    .local v0, "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    new-instance v1, Lorg/ow2/asmdex/structureWriter/Method;

    invoke-direct {v1, p1, p2, v0}, Lorg/ow2/asmdex/structureWriter/Method;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/Prototype;)V

    .line 802
    .local v1, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->methods:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Method;

    .line 803
    .local v2, "foundMethod":Lorg/ow2/asmdex/structureWriter/Method;
    if-nez v2, :cond_0

    .line 804
    invoke-virtual {v1, p4, p5, p6, p0}, Lorg/ow2/asmdex/structureWriter/Method;->init(I[Ljava/lang/String;[Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 805
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->methods:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0, p5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringsToConstantPool([Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, p6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypesToConstantPool([Ljava/lang/String;)V

    .line 813
    return-object v1

    .line 821
    :cond_0
    const/high16 v3, 0x40000

    and-int/2addr v3, p4

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->isUnknown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    invoke-virtual {v2, p4, p6, p5, p0}, Lorg/ow2/asmdex/structureWriter/Method;->completeInformation(I[Ljava/lang/String;[Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 824
    :cond_1
    return-object v2
.end method

.method public addOffsetForStaticValuesEncodedArrayItemOfClass(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;I)V
    .locals 2
    .param p1, "cdi"    # Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    .param p2, "offset"    # I

    .line 963
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->staticValuesEncodedArrayItemOffsets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 964
    return-void
.end method

.method public addPrototypeToConstantPool(Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Prototype;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 753
    new-instance v0, Lorg/ow2/asmdex/structureWriter/Prototype;

    invoke-direct {v0, p1}, Lorg/ow2/asmdex/structureWriter/Prototype;-><init>(Ljava/lang/String;)V

    .line 754
    .local v0, "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 755
    .local v1, "existing":Lorg/ow2/asmdex/structureWriter/Prototype;
    if-nez v1, :cond_0

    .line 756
    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addPrototypeToConstantPool(Lorg/ow2/asmdex/structureWriter/Prototype;)V

    goto :goto_0

    .line 758
    :cond_0
    move-object v0, v1

    .line 760
    :goto_0
    return-object v0
.end method

.method public addPrototypeToConstantPool(Lorg/ow2/asmdex/structureWriter/Prototype;)V
    .locals 2
    .param p1, "prototype"    # Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 736
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 737
    .local v0, "existing":Lorg/ow2/asmdex/structureWriter/Prototype;
    if-nez v0, :cond_0

    .line 738
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/Prototype;->initialize()V

    .line 739
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getShortyDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getReturnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 741
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/Prototype;->getParameterTypes()Lorg/ow2/asmdex/structureWriter/TypeList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeListToConstantPool(Lorg/ow2/asmdex/structureWriter/TypeList;)V

    .line 742
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypes:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    :cond_0
    return-void
.end method

.method public addStringToConstantPool(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .line 677
    if-eqz p1, :cond_1

    .line 678
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_1
    return-void
.end method

.method public addStringsToConstantPool([Ljava/lang/String;)V
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;

    .line 693
    if-eqz p1, :cond_0

    .line 694
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 695
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 694
    .end local v2    # "string":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_0
    return-void
.end method

.method public addTypeListToConstantPool(Lorg/ow2/asmdex/structureWriter/TypeList;)V
    .locals 4
    .param p1, "typeList"    # Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 770
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/TypeList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 771
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/TypeList;->getTypeList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 772
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 771
    .end local v3    # "type":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 774
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_1
    return-void
.end method

.method public addTypeToConstantPool(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .line 706
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 707
    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 708
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->types:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 715
    :cond_1
    return-void
.end method

.method public addTypesToConstantPool([Ljava/lang/String;)V
    .locals 3
    .param p1, "types"    # [Ljava/lang/String;

    .line 723
    if-eqz p1, :cond_0

    .line 724
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 725
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 724
    .end local v2    # "type":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 728
    :cond_0
    return-void
.end method

.method public getAnnotationDirectoryItemCount()I
    .locals 1

    .line 592
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classesToAnnotationDirectoryItemOffsets:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getAnnotationDirectoryItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)I
    .locals 1
    .param p1, "annotationDirectoryItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    .line 523
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classesToAnnotationDirectoryItemOffsets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classesToAnnotationDirectoryItemOffsets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 526
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAnnotationDirectoryItems()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;",
            ">;"
        }
    .end annotation

    .line 623
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationDirectoryItems:Ljava/util/HashSet;

    return-object v0
.end method

.method public getAnnotationItemCount()I
    .locals 1

    .line 568
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItems:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getAnnotationItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)I
    .locals 1
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 468
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItemsToOffsets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    .line 544
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItems:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getAnnotationSetItemCount()I
    .locals 1

    .line 576
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItems:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getAnnotationSetItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)I
    .locals 1
    .param p1, "annotationSetItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 486
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItemsToOffsets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAnnotationSetItems()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;",
            ">;"
        }
    .end annotation

    .line 552
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItems:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getAnnotationSetRefListOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;)I
    .locals 1
    .param p1, "annotationSetRefList"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 504
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefListsToOffsets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getAnnotationSetRefLists()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;",
            ">;"
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefLists:Ljava/util/HashSet;

    return-object v0
.end method

.method public getAnnotationSetRefListsCount()I
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefLists:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getClassDefinitionCount()I
    .locals 1

    .line 320
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classNameToClassDefinitionItem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getClasses()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;",
            ">;"
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedClasses:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFieldCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->fields:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getFieldIndex(Lorg/ow2/asmdex/structureWriter/Field;)I
    .locals 1
    .param p1, "field"    # Lorg/ow2/asmdex/structureWriter/Field;

    .line 441
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 444
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedFieldsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getFields()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedFields:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->methods:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I
    .locals 1
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 455
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 458
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedMethodsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMethods()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedMethods:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getOffsetOfStaticValuesEncodedArrayItemOfClass(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)I
    .locals 2
    .param p1, "cdi"    # Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 602
    const/4 v0, 0x0

    .line 603
    .local v0, "result":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->staticValuesEncodedArrayItemOffsets:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 604
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->staticValuesEncodedArrayItemOffsets:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 606
    :cond_0
    return v0
.end method

.method public getPrototypeCount()I
    .locals 1

    .line 296
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getPrototypeIndex(Lorg/ow2/asmdex/structureWriter/Prototype;)I
    .locals 1
    .param p1, "prototype"    # Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 431
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prototypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPrototypes()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/Prototype;",
            ">;"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedPrototypes:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getResolvedFieldIndexFromSymbolicFieldIndex(I)I
    .locals 1
    .param p1, "fieldIndex"    # I

    .line 643
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicFieldsIndexToResolvedFieldsIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getResolvedMethodIndexFromSymbolicMethodIndex(I)I
    .locals 1
    .param p1, "methodIndex"    # I

    .line 633
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicMethodsIndexToResolvedMethodsIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getResolvedStringIndexFromSymbolicStringIndex(I)I
    .locals 1
    .param p1, "stringIndex"    # I

    .line 663
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsIndexToResolvedStringsIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getResolvedTypeIndexFromSymbolicTypeIndex(I)I
    .locals 1
    .param p1, "typeIndex"    # I

    .line 653
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesIndexToResolvedTypesIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getStringCount()I
    .locals 1

    .line 280
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->strings:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getStringIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 386
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicStringsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedStringsToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getStrings()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->strings:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getTypeCount()I
    .locals 1

    .line 288
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->types:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    return v0
.end method

.method public getTypeIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 418
    iget-boolean v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->useSymbolicElements:Z

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->symbolicTypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 421
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->resolvedTypesToIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTypeList()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Lorg/ow2/asmdex/structureWriter/TypeList;",
            ">;"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->orderedTypeList:Ljava/util/TreeSet;

    return-object v0
.end method

.method public getTypeListCount()I
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getTypeListOffset(Lorg/ow2/asmdex/structureWriter/TypeList;)I
    .locals 1
    .param p1, "typeList"    # Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 399
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeListsToOffsets:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getTypes()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->types:Ljava/util/TreeSet;

    return-object v0
.end method

.method public prepareGeneration()V
    .locals 0

    .line 980
    invoke-direct {p0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->generateSortedCollections()V

    .line 981
    invoke-direct {p0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->buildIndexMaps()V

    .line 982
    return-void
.end method

.method public setAnnotationDirectoryItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;I)V
    .locals 2
    .param p1, "annotationDirectoryItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    .param p2, "offset"    # I

    .line 536
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->classesToAnnotationDirectoryItemOffsets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return-void
.end method

.method public setAnnotationItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationItem;I)V
    .locals 2
    .param p1, "annotationItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    .param p2, "offset"    # I

    .line 477
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationItemsToOffsets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method

.method public setAnnotationSetItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;I)V
    .locals 2
    .param p1, "annotationSetItem"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .param p2, "offset"    # I

    .line 495
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetItemsToOffsets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    return-void
.end method

.method public setAnnotationSetRefListOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;I)V
    .locals 2
    .param p1, "annotationSetRefList"    # Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    .param p2, "offset"    # I

    .line 513
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->annotationSetRefListsToOffsets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    return-void
.end method

.method public setTypeListOffset(Lorg/ow2/asmdex/structureWriter/TypeList;I)V
    .locals 2
    .param p1, "typeList"    # Lorg/ow2/asmdex/structureWriter/TypeList;
    .param p2, "offset"    # I

    .line 408
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/ConstantPool;->typeListsToOffsets:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    return-void
.end method
