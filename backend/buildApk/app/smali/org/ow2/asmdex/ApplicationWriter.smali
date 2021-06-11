.class public Lorg/ow2/asmdex/ApplicationWriter;
.super Lorg/ow2/asmdex/ApplicationVisitor;
.source "ApplicationWriter.java"


# static fields
.field private static final ADLER_OFFSET:I = 0x8

.field private static final ADLER_SIZE:I = 0x4

.field private static final CLASS_DEF_ITEM_SIZE:I = 0x20

.field public static final DISPLAY_WRITER_INFORMATION:Z = false

.field private static final FIELD_ID_ITEM_SIZE:I = 0x8

.field private static final FILE_SIZE_OFFSET:I = 0x20

.field private static final HEADER_NOMINAL_SIZE:I = 0x70

.field private static final MAP_OFFSET_OFFSET:I = 0x34

.field private static final METHOD_ID_ITEM_SIZE:I = 0x8

.field private static final PROTO_ID_ITEM_SIZE:I = 0xc

.field private static final SHA1_SIGNATURE_OFFSET:I = 0xc

.field private static final SHA1_SIGNATURE_SIZE:I = 0x14

.field public static final SKIP_DEBUG_INFO_ITEMS:Z = false

.field private static final STANDARD_ENDIAN_VALUE:I = 0x12345678

.field private static final STRING_ID_ITEM_SIZE:I = 0x4

.field private static final TYPE_ID_ITEM_SIZE:I = 0x4

.field private static final dexFileMagic:[B


# instance fields
.field private annotationDirectoryItemsOffset:I

.field private annotationItemsOffset:I

.field private annotationSetItemOffset:I

.field private annotationSetRefListOffset:I

.field private applicationReader:Lorg/ow2/asmdex/ApplicationReader;

.field private classDataItemCount:I

.field private classDataItemOffset:I

.field private classDefinitionsOffset:I

.field private codeItemCount:I

.field private codeItemOffset:I

.field private constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private dataOffset:I

.field private debugInfoItemCount:I

.field private debugInfoItemOffset:I

.field private encodedArrayItemsCount:I

.field private encodedArrayItemsOffset:I

.field private fieldIdsOffset:I

.field private methodIdsOffset:I

.field private out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

.field private prototypeIdsOffset:I

.field private stringDataOffset:I

.field private stringIdsOffset:I

.field private typeIdsOffset:I

.field private typeListOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ow2/asmdex/ApplicationWriter;->dexFileMagic:[B

    return-void

    :array_0
    .array-data 1
        0x64t
        0x65t
        0x78t
        0xat
        0x30t
        0x33t
        0x35t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 201
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/ApplicationVisitor;-><init>(I)V

    .line 115
    new-instance v0, Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 147
    const/16 v0, 0x70

    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    .line 167
    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsCount:I

    .line 168
    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemCount:I

    .line 202
    return-void
.end method

.method public constructor <init>(Lorg/ow2/asmdex/ApplicationReader;)V
    .locals 1
    .param p1, "applicationReader"    # Lorg/ow2/asmdex/ApplicationReader;

    .line 226
    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/ApplicationVisitor;-><init>(I)V

    .line 115
    new-instance v0, Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-direct {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 147
    const/16 v0, 0x70

    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    .line 167
    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsCount:I

    .line 168
    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemCount:I

    .line 227
    invoke-virtual {p1, p0}, Lorg/ow2/asmdex/ApplicationReader;->copyPool(Lorg/ow2/asmdex/ApplicationWriter;)V

    .line 228
    iput-object p1, p0, Lorg/ow2/asmdex/ApplicationWriter;->applicationReader:Lorg/ow2/asmdex/ApplicationReader;

    .line 229
    return-void
.end method

.method private addAdler32Checksum()V
    .locals 4

    .line 526
    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    .line 527
    .local v0, "adler":Ljava/util/zip/Adler32;
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v2

    const/16 v3, 0xc

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Adler32;->update([BII)V

    .line 528
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v2

    long-to-int v3, v2

    const/16 v2, 0x8

    invoke-virtual {v1, v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 529
    return-void
.end method

.method private addSHA1Signature()V
    .locals 6

    .line 535
    const/4 v0, 0x0

    .line 537
    .local v0, "sha":Ljava/security/MessageDigest;
    :try_start_0
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 542
    goto :goto_0

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 544
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 545
    const/16 v1, 0x20

    .line 546
    .local v1, "sha1PostSignatureOffset":I
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v2

    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 547
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 548
    .local v2, "digest":[B
    array-length v3, v2

    const/16 v4, 0x14

    if-ne v3, v4, :cond_1

    .line 549
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/16 v4, 0xc

    invoke-virtual {v3, v2, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([BI)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_1

    .line 552
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHA-1 digest has an unexpected size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "sha":Ljava/security/MessageDigest;
    .end local v1    # "sha1PostSignatureOffset":I
    .end local v2    # "digest":[B
    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 553
    .restart local v0    # "sha":Ljava/security/MessageDigest;
    .restart local v1    # "sha1PostSignatureOffset":I
    .restart local v2    # "digest":[B
    :catch_1
    move-exception v3

    .line 554
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 555
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 560
    .end local v1    # "sha1PostSignatureOffset":I
    .end local v2    # "digest":[B
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    return-void
.end method

.method private completeAnnotationDirectoryItems()V
    .locals 10

    .line 959
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationDirectoryItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    .line 962
    .local v1, "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2, v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationDirectoryItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)I

    move-result v2

    .line 963
    .local v2, "directoryItemOffset":I
    if-eqz v2, :cond_6

    .line 965
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getClassAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v3

    .line 967
    .local v3, "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v4

    if-lez v4, :cond_0

    .line 968
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v4, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)I

    move-result v4

    .line 969
    .local v4, "annotationOffset":I
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v4, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 972
    .end local v4    # "annotationOffset":I
    :cond_0
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedFields()I

    move-result v5

    add-int/lit8 v6, v2, 0x4

    invoke-virtual {v4, v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 973
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedMethods()I

    move-result v5

    add-int/lit8 v6, v2, 0x8

    invoke-virtual {v4, v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 974
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedParameters()I

    move-result v5

    add-int/lit8 v6, v2, 0xc

    invoke-virtual {v4, v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 976
    add-int/lit8 v2, v2, 0x10

    .line 979
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedFields()I

    move-result v4

    if-lez v4, :cond_2

    .line 980
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 981
    .local v4, "orderedContent":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getAnnotatedFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/structureWriter/Field;

    .line 982
    .local v6, "field":Lorg/ow2/asmdex/structureWriter/Field;
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v7, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldIndex(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    .end local v6    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    goto :goto_1

    .line 984
    :cond_1
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 985
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;

    .line 986
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 985
    invoke-direct {p0, v7, v8, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeFieldMethodIndexAnnotation(Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;II)I

    move-result v2

    .line 987
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    goto :goto_2

    .line 991
    .end local v4    # "orderedContent":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    :cond_2
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedMethods()I

    move-result v4

    if-lez v4, :cond_4

    .line 992
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 993
    .restart local v4    # "orderedContent":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getAnnotatedMethods()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/structureWriter/Method;

    .line 994
    .local v6, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v7, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .end local v6    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    goto :goto_3

    .line 996
    :cond_3
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 997
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;

    .line 998
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 997
    invoke-direct {p0, v7, v8, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeFieldMethodIndexAnnotation(Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;II)I

    move-result v2

    .line 999
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    goto :goto_4

    .line 1003
    .end local v4    # "orderedContent":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;>;"
    :cond_4
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedParameters()I

    move-result v4

    if-lez v4, :cond_6

    .line 1004
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 1006
    .local v4, "orderedContent":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;>;"
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getAnnotatedParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 1007
    .local v6, "annotatedParameters":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getMethod()Lorg/ow2/asmdex/structureWriter/Method;

    move-result-object v7

    .line 1008
    .local v7, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v8, v7}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Lorg/ow2/asmdex/structureWriter/Method;->getAnnotatedParameterSetRefList()Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    .end local v6    # "annotatedParameters":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    .end local v7    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    goto :goto_5

    .line 1010
    :cond_5
    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1011
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;>;"
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1012
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    invoke-virtual {v8, v9}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetRefListOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;)I

    move-result v8

    add-int/lit8 v9, v2, 0x4

    invoke-virtual {v7, v8, v9}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1014
    nop

    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;>;"
    add-int/lit8 v2, v2, 0x8

    .line 1015
    goto :goto_6

    .line 1018
    .end local v1    # "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    .end local v2    # "directoryItemOffset":I
    .end local v3    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .end local v4    # "orderedContent":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;>;"
    :cond_6
    goto/16 :goto_0

    .line 1020
    :cond_7
    return-void
.end method

.method private completeAnnotationSetItems()V
    .locals 7

    .line 915
    iget v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetItemOffset:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItemCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 916
    iget v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetItemOffset:I

    .line 918
    .local v0, "offset":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItems()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 919
    .local v2, "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 920
    add-int/lit8 v0, v0, 0x4

    .line 922
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getAnnotationItems()Ljava/util/TreeSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 923
    .local v4, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationItem;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 924
    nop

    .end local v4    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    add-int/lit8 v0, v0, 0x4

    .line 925
    goto :goto_1

    .line 927
    .end local v2    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    :cond_0
    goto :goto_0

    .line 929
    .end local v0    # "offset":I
    :cond_1
    return-void
.end method

.method private completeAnnotationSetRefLists()V
    .locals 8

    .line 937
    iget v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetRefListOffset:I

    .line 938
    .local v0, "offset":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetRefLists()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 939
    .local v2, "annotationSetRefList":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getNbAnnotationSetItem()I

    move-result v3

    .line 940
    .local v3, "size":I
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4, v3, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 941
    add-int/lit8 v0, v0, 0x4

    .line 944
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 945
    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getAnnotationSetItem(I)Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v5

    .line 946
    .local v5, "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v7, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)I

    move-result v7

    invoke-virtual {v6, v7, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 947
    nop

    .end local v5    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    add-int/lit8 v0, v0, 0x4

    .line 944
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 949
    .end local v2    # "annotationSetRefList":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    .end local v3    # "size":I
    .end local v4    # "i":I
    :cond_0
    goto :goto_0

    .line 951
    :cond_1
    return-void
.end method

.method private generateDexFile()V
    .locals 22

    .line 324
    move-object/from16 v1, p0

    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/16 v2, 0x70

    invoke-direct {v0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>(I)V

    iput-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 334
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->prepareGeneration()V

    .line 339
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    sget-object v3, Lorg/ow2/asmdex/ApplicationWriter;->dexFileMagic:[B

    array-length v4, v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([BII)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 340
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 341
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x14

    if-ge v0, v3, :cond_0

    .line 342
    iget-object v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "i":I
    :cond_0
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 345
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 346
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const v3, 0x12345678

    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 348
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 349
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 351
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 354
    iput v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    .line 355
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringCount()I

    move-result v2

    .line 356
    .local v2, "nbStrings":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 357
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v2, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    iget v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    :goto_1
    invoke-virtual {v0, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 358
    mul-int/lit8 v3, v2, 0x4

    .line 361
    .local v3, "stringIdsSize":I
    iget v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    add-int/2addr v0, v3

    iput v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->typeIdsOffset:I

    .line 362
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeCount()I

    move-result v4

    .line 363
    .local v4, "nbTypes":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 364
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v4, :cond_2

    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    iget v6, v1, Lorg/ow2/asmdex/ApplicationWriter;->typeIdsOffset:I

    :goto_2
    invoke-virtual {v0, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 365
    mul-int/lit8 v6, v4, 0x4

    .line 368
    .local v6, "typeIdsSize":I
    iget v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->typeIdsOffset:I

    add-int/2addr v0, v6

    iput v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->prototypeIdsOffset:I

    .line 369
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getPrototypeCount()I

    move-result v7

    .line 370
    .local v7, "nbProtos":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v7}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 371
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v7, :cond_3

    const/4 v8, 0x0

    goto :goto_3

    :cond_3
    iget v8, v1, Lorg/ow2/asmdex/ApplicationWriter;->prototypeIdsOffset:I

    :goto_3
    invoke-virtual {v0, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 372
    mul-int/lit8 v8, v7, 0xc

    .line 375
    .local v8, "protoIdsSize":I
    iget v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->prototypeIdsOffset:I

    add-int/2addr v0, v8

    iput v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->fieldIdsOffset:I

    .line 376
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldCount()I

    move-result v9

    .line 377
    .local v9, "nbFields":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v9}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 378
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v9, :cond_4

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    iget v10, v1, Lorg/ow2/asmdex/ApplicationWriter;->fieldIdsOffset:I

    :goto_4
    invoke-virtual {v0, v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 379
    mul-int/lit8 v10, v9, 0x8

    .line 382
    .local v10, "fieldIdsSize":I
    iget v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->fieldIdsOffset:I

    add-int/2addr v0, v10

    iput v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->methodIdsOffset:I

    .line 383
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodCount()I

    move-result v11

    .line 384
    .local v11, "nbMethods":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 385
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v11, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    iget v12, v1, Lorg/ow2/asmdex/ApplicationWriter;->methodIdsOffset:I

    :goto_5
    invoke-virtual {v0, v12}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 386
    mul-int/lit8 v12, v11, 0x8

    .line 389
    .local v12, "methodIdsSize":I
    iget v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->methodIdsOffset:I

    add-int/2addr v0, v12

    iput v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->classDefinitionsOffset:I

    .line 390
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getClassDefinitionCount()I

    move-result v13

    .line 391
    .local v13, "nbClasses":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v13}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 392
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v13, :cond_6

    const/4 v14, 0x0

    goto :goto_6

    :cond_6
    iget v14, v1, Lorg/ow2/asmdex/ApplicationWriter;->classDefinitionsOffset:I

    :goto_6
    invoke-virtual {v0, v14}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 397
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v14

    .line 398
    .local v14, "dataSizeOffset":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 399
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 409
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v2, :cond_7

    .line 410
    iget-object v15, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v15, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 414
    .end local v0    # "i":I
    :cond_7
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypes()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 415
    .local v15, "type":Ljava/lang/String;
    iget-object v5, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5, v15}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v5

    .line 416
    .local v5, "index":I
    move-object/from16 v16, v0

    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 417
    .end local v5    # "index":I
    .end local v15    # "type":Ljava/lang/String;
    move-object/from16 v0, v16

    const/4 v5, 0x0

    goto :goto_8

    .line 420
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_9
    if-ge v0, v7, :cond_9

    .line 421
    iget-object v5, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 422
    iget-object v5, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v15}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 423
    iget-object v5, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v15}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 427
    .end local v0    # "i":I
    :cond_9
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFields()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ow2/asmdex/structureWriter/Field;

    .line 428
    .local v5, "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Field;->getClassName()Ljava/lang/String;

    move-result-object v15

    .line 429
    .local v15, "className":Ljava/lang/String;
    move-object/from16 v16, v0

    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Field;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "typeName":Ljava/lang/String;
    move/from16 v17, v2

    .end local v2    # "nbStrings":I
    .local v17, "nbStrings":I
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2, v15}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v2

    .line 431
    .local v2, "classNameIndex":I
    move/from16 v18, v3

    .end local v3    # "stringIdsSize":I
    .local v18, "stringIdsSize":I
    iget-object v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3, v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v3

    .line 432
    .local v3, "typeNameIndex":I
    move-object/from16 v19, v0

    .end local v0    # "typeName":Ljava/lang/String;
    .local v19, "typeName":Ljava/lang/String;
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move/from16 v20, v4

    .end local v4    # "nbTypes":I
    .local v20, "nbTypes":I
    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Field;->getFieldName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    .line 434
    .local v0, "nameIndex":I
    iget-object v4, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 435
    iget-object v4, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 436
    iget-object v4, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 437
    .end local v0    # "nameIndex":I
    .end local v2    # "classNameIndex":I
    .end local v3    # "typeNameIndex":I
    .end local v5    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    .end local v15    # "className":Ljava/lang/String;
    .end local v19    # "typeName":Ljava/lang/String;
    move-object/from16 v0, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v20

    goto :goto_a

    .line 440
    .end local v17    # "nbStrings":I
    .end local v18    # "stringIdsSize":I
    .end local v20    # "nbTypes":I
    .local v2, "nbStrings":I
    .local v3, "stringIdsSize":I
    .restart local v4    # "nbTypes":I
    :cond_a
    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v20, v4

    .end local v2    # "nbStrings":I
    .end local v3    # "stringIdsSize":I
    .end local v4    # "nbTypes":I
    .restart local v17    # "nbStrings":I
    .restart local v18    # "stringIdsSize":I
    .restart local v20    # "nbTypes":I
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethods()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Method;

    .line 441
    .local v2, "method":Lorg/ow2/asmdex/structureWriter/Method;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "className":Ljava/lang/String;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->getPrototype()Lorg/ow2/asmdex/structureWriter/Prototype;

    move-result-object v4

    .line 443
    .local v4, "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Method;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "name":Ljava/lang/String;
    iget-object v15, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v15, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v15

    .line 445
    .local v15, "classNameIndex":I
    move-object/from16 v16, v0

    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v0

    .line 446
    .restart local v0    # "nameIndex":I
    move-object/from16 v19, v2

    .end local v2    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    .local v19, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getPrototypeIndex(Lorg/ow2/asmdex/structureWriter/Prototype;)I

    move-result v2

    .line 448
    .local v2, "prototypeIndex":I
    move-object/from16 v21, v3

    .end local v3    # "className":Ljava/lang/String;
    .local v21, "className":Ljava/lang/String;
    iget-object v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v15}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 449
    iget-object v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 450
    iget-object v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 451
    .end local v0    # "nameIndex":I
    .end local v2    # "prototypeIndex":I
    .end local v4    # "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    .end local v5    # "name":Ljava/lang/String;
    .end local v15    # "classNameIndex":I
    .end local v19    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    .end local v21    # "className":Ljava/lang/String;
    move-object/from16 v0, v16

    goto :goto_b

    .line 454
    :cond_b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    if-ge v0, v13, :cond_c

    .line 455
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 456
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 457
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 458
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 459
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 460
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 461
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 462
    iget-object v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 471
    .end local v0    # "i":I
    :cond_c
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v0

    iput v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->dataOffset:I

    .line 473
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->prepareAnnotationSetRefLists()V

    .line 475
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->prepareAnnotationSetItems()V

    .line 477
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeCodeItems()V

    .line 479
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->prepareAnnotationDirectoryItems()V

    .line 481
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeTypeList()V

    .line 483
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writePrototypeIds()V

    .line 485
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeStringDataItemSection()V

    .line 487
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeDebugInfoItems()V

    .line 489
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeAnnotationItems()V

    .line 490
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->completeAnnotationSetItems()V

    .line 491
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->completeAnnotationSetRefLists()V

    .line 492
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->completeAnnotationDirectoryItems()V

    .line 494
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeEncodedArrayItems()V

    .line 496
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeClassDataItems()V

    .line 498
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->writeMap()V

    .line 501
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v0

    iget v2, v1, Lorg/ow2/asmdex/ApplicationWriter;->dataOffset:I

    sub-int v2, v0, v2

    .line 502
    .local v2, "dataSize":I
    rem-int/lit8 v0, v2, 0x4

    if-nez v0, :cond_d

    goto :goto_d

    .line 504
    :cond_d
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v3, "Data Size isn\'t a multiple of (uint)."

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v2    # "dataSize":I
    .end local v6    # "typeIdsSize":I
    .end local v7    # "nbProtos":I
    .end local v8    # "protoIdsSize":I
    .end local v9    # "nbFields":I
    .end local v10    # "fieldIdsSize":I
    .end local v11    # "nbMethods":I
    .end local v12    # "methodIdsSize":I
    .end local v13    # "nbClasses":I
    .end local v14    # "dataSizeOffset":I
    .end local v17    # "nbStrings":I
    .end local v18    # "stringIdsSize":I
    .end local v20    # "nbTypes":I
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    .restart local v2    # "dataSize":I
    .restart local v6    # "typeIdsSize":I
    .restart local v7    # "nbProtos":I
    .restart local v8    # "protoIdsSize":I
    .restart local v9    # "nbFields":I
    .restart local v10    # "fieldIdsSize":I
    .restart local v11    # "nbMethods":I
    .restart local v12    # "methodIdsSize":I
    .restart local v13    # "nbClasses":I
    .restart local v14    # "dataSizeOffset":I
    .restart local v17    # "nbStrings":I
    .restart local v18    # "stringIdsSize":I
    .restart local v20    # "nbTypes":I
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_d
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, v2, v14}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 512
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget v3, v1, Lorg/ow2/asmdex/ApplicationWriter;->dataOffset:I

    add-int/lit8 v4, v14, 0x4

    invoke-virtual {v0, v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 515
    iget-object v0, v1, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 517
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->addSHA1Signature()V

    .line 518
    invoke-direct/range {p0 .. p0}, Lorg/ow2/asmdex/ApplicationWriter;->addAdler32Checksum()V

    .line 519
    return-void
.end method

.method private prepareAnnotationDirectoryItems()V
    .locals 9

    .line 710
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationDirectoryItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    .line 711
    .local v1, "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding()V

    .line 712
    iget v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationDirectoryItemsOffset:I

    if-nez v2, :cond_0

    .line 713
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationDirectoryItemsOffset:I

    .line 716
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->setAnnotationDirectoryItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;I)V

    .line 718
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 720
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedFields()I

    move-result v2

    .line 721
    .local v2, "nbAnnotatedFields":I
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedMethods()I

    move-result v4

    .line 722
    .local v4, "nbAnnotatedMethods":I
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;->getNbAnnotatedParameters()I

    move-result v5

    .line 724
    .local v5, "nbAnnotatedParameters":I
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 725
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 726
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 728
    add-int v6, v2, v4

    add-int/2addr v6, v5

    .line 729
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 730
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v8, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 731
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v8, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 729
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 733
    .end local v1    # "adi":Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;
    .end local v2    # "nbAnnotatedFields":I
    .end local v4    # "nbAnnotatedMethods":I
    .end local v5    # "nbAnnotatedParameters":I
    .end local v6    # "size":I
    .end local v7    # "i":I
    :cond_1
    goto :goto_0

    .line 734
    :cond_2
    return-void
.end method

.method private prepareAnnotationSetItems()V
    .locals 6

    .line 590
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItems()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    .line 591
    .local v1, "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;->getNbAnnotationItems()I

    move-result v2

    .line 594
    .local v2, "size":I
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding()V

    .line 595
    iget v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetItemOffset:I

    if-nez v3, :cond_0

    .line 596
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    iput v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetItemOffset:I

    .line 598
    :cond_0
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->setAnnotationSetItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;I)V

    .line 600
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 602
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_1

    .line 603
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 602
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 605
    .end local v1    # "annotationSetItem":Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_0

    .line 608
    :cond_2
    return-void
.end method

.method private prepareAnnotationSetRefLists()V
    .locals 6

    .line 567
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetRefLists()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;

    .line 568
    .local v1, "annotationSetRefList":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding()V

    .line 569
    iget v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetRefListOffset:I

    if-nez v2, :cond_0

    .line 570
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetRefListOffset:I

    .line 573
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->setAnnotationSetRefListOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;I)V

    .line 576
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 577
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;->getNbAnnotationSetItem()I

    move-result v4

    .local v4, "size":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 578
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 577
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 580
    .end local v1    # "annotationSetRefList":Lorg/ow2/asmdex/structureWriter/AnnotationSetRefList;
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_1
    goto :goto_0

    .line 581
    :cond_2
    return-void
.end method

.method private writeAnnotationItems()V
    .locals 8

    .line 889
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v0

    iput v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationItemsOffset:I

    .line 892
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationItems()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/AnnotationItem;

    .line 893
    .local v1, "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->setAnnotationItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationItem;I)V

    .line 895
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getVisibility()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByte(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 897
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 898
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getNbAnnotationElements()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 900
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/AnnotationItem;->getAnnotationElements()Ljava/util/PriorityQueue;

    move-result-object v2

    .line 902
    .local v2, "annotationElements":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/ow2/asmdex/structureWriter/AnnotationElement;>;"
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/ow2/asmdex/structureWriter/AnnotationElement;

    .line 903
    .local v4, "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v4}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->getElementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 904
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4}, Lorg/ow2/asmdex/structureWriter/AnnotationElement;->getEncodedValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v6

    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v7}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->encode(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([B)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 905
    .end local v4    # "annotationElement":Lorg/ow2/asmdex/structureWriter/AnnotationElement;
    goto :goto_1

    .line 906
    .end local v1    # "annotationItem":Lorg/ow2/asmdex/structureWriter/AnnotationItem;
    .end local v2    # "annotationElements":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lorg/ow2/asmdex/structureWriter/AnnotationElement;>;"
    :cond_0
    goto :goto_0

    .line 907
    :cond_1
    return-void
.end method

.method private writeClassDataItems()V
    .locals 13

    .line 1171
    iget v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDefinitionsOffset:I

    .line 1173
    .local v0, "currentClassDefinitionOffset":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemOffset:I

    .line 1175
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getClasses()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 1177
    .local v2, "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1179
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getAccessFlags()I

    move-result v4

    add-int/lit8 v5, v0, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1181
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getSuperClassName()Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, "superClassName":Ljava/lang/String;
    const/4 v4, -0x1

    if-nez v3, :cond_0

    const/4 v5, -0x1

    goto :goto_1

    .line 1183
    :cond_0
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v5

    :goto_1
    nop

    .line 1184
    .local v5, "superClassIndex":I
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    add-int/lit8 v7, v0, 0x8

    invoke-virtual {v6, v5, v7}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1187
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getInterfaces()Lorg/ow2/asmdex/structureWriter/TypeList;

    move-result-object v6

    .line 1188
    .local v6, "interfaces":Lorg/ow2/asmdex/structureWriter/TypeList;
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureWriter/TypeList;->size()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    goto :goto_2

    .line 1189
    :cond_1
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v7, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeListOffset(Lorg/ow2/asmdex/structureWriter/TypeList;)I

    move-result v7

    :goto_2
    nop

    .line 1190
    .local v7, "indexTypeListInterface":I
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    add-int/lit8 v9, v0, 0xc

    invoke-virtual {v8, v7, v9}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1193
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getSourceFileName()Ljava/lang/String;

    move-result-object v8

    .line 1194
    .local v8, "sourceFile":Ljava/lang/String;
    if-nez v8, :cond_2

    goto :goto_3

    .line 1195
    :cond_2
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v4, v8}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v4

    :goto_3
    nop

    .line 1196
    .local v4, "indexSourceFile":I
    iget-object v9, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    add-int/lit8 v10, v0, 0x10

    invoke-virtual {v9, v4, v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1199
    iget-object v9, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getAnnotationDirectoryItem()Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationDirectoryItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationDirectoryItem;)I

    move-result v10

    add-int/lit8 v11, v0, 0x14

    invoke-virtual {v9, v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1207
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->isInterface()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbStaticFields()I

    move-result v9

    if-nez v9, :cond_3

    .line 1208
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbInstanceFields()I

    move-result v9

    if-nez v9, :cond_3

    .line 1209
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbDirectMethods()I

    move-result v9

    if-nez v9, :cond_3

    .line 1210
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbVirtualMethods()I

    move-result v9

    if-nez v9, :cond_3

    .line 1211
    const/4 v9, 0x0

    .local v9, "classDataOffset":I
    goto :goto_4

    .line 1213
    .end local v9    # "classDataOffset":I
    :cond_3
    iget-object v9, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v9

    .line 1215
    .restart local v9    # "classDataOffset":I
    :goto_4
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    add-int/lit8 v11, v0, 0x18

    invoke-virtual {v10, v9, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1218
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v11, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v11, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getOffsetOfStaticValuesEncodedArrayItemOfClass(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;)I

    move-result v11

    add-int/lit8 v12, v0, 0x1c

    invoke-virtual {v10, v11, v12}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1220
    add-int/lit8 v0, v0, 0x20

    .line 1223
    if-eqz v9, :cond_4

    .line 1224
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbStaticFields()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1225
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbInstanceFields()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1226
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbDirectMethods()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1227
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbVirtualMethods()I

    move-result v11

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1229
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getStaticFields()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/ow2/asmdex/ApplicationWriter;->writeFieldsInClassDataItem(Ljava/util/ArrayList;)V

    .line 1230
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getInstanceFields()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/ow2/asmdex/ApplicationWriter;->writeFieldsInClassDataItem(Ljava/util/ArrayList;)V

    .line 1232
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getDirectMethods()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/ow2/asmdex/ApplicationWriter;->writeMethodsInClassDataItem(Ljava/util/ArrayList;)V

    .line 1233
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getVirtualMethods()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {p0, v10}, Lorg/ow2/asmdex/ApplicationWriter;->writeMethodsInClassDataItem(Ljava/util/ArrayList;)V

    .line 1235
    iget v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemCount:I

    .line 1237
    .end local v2    # "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    .end local v3    # "superClassName":Ljava/lang/String;
    .end local v4    # "indexSourceFile":I
    .end local v5    # "superClassIndex":I
    .end local v6    # "interfaces":Lorg/ow2/asmdex/structureWriter/TypeList;
    .end local v7    # "indexTypeListInterface":I
    .end local v8    # "sourceFile":Ljava/lang/String;
    .end local v9    # "classDataOffset":I
    :cond_4
    goto/16 :goto_0

    .line 1239
    :cond_5
    return-void
.end method

.method private writeCodeItems()V
    .locals 3

    .line 617
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getClasses()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 619
    .local v1, "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getDirectMethods()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMethodsOfCodeItem(Ljava/util/List;)V

    .line 620
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getVirtualMethods()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMethodsOfCodeItem(Ljava/util/List;)V

    .line 622
    .end local v1    # "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    goto :goto_0

    .line 623
    :cond_0
    return-void
.end method

.method private writeDebugInfoItems()V
    .locals 9

    .line 818
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethods()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/Method;

    .line 821
    .local v1, "method":Lorg/ow2/asmdex/structureWriter/Method;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->isUnknown()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->supportsCodeItem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 822
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v2

    .line 825
    .local v2, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getStartDebugInfoToCopy()I

    move-result v3

    .line 826
    .local v3, "startDebugInfoToCopy":I
    if-nez v3, :cond_3

    .line 828
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getDebugInfoItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v4

    .line 829
    .local v4, "debugInfoItemCode":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    if-eqz v4, :cond_2

    .line 831
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v5

    .line 833
    .local v5, "currentDebugInfoItemOffset":I
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getOffset()I

    move-result v6

    .line 834
    .local v6, "currentCodeItemOffset":I
    if-eqz v6, :cond_2

    .line 836
    iget v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemOffset:I

    if-nez v7, :cond_0

    .line 837
    iput v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemOffset:I

    .line 841
    :cond_0
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v7, v5}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setDebugInfoItemOffset(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)V

    .line 847
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->areSymbolicIndexesUsedInDebugCodeItem()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 848
    const/4 v7, 0x0

    invoke-virtual {v2, v4, v7}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexesForDebug(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v4

    .line 850
    :cond_1
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v7, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 852
    iget v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    .line 855
    .end local v4    # "debugInfoItemCode":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local v5    # "currentDebugInfoItemOffset":I
    .end local v6    # "currentCodeItemOffset":I
    :cond_2
    goto :goto_1

    .line 861
    :cond_3
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->applicationReader:Lorg/ow2/asmdex/ApplicationReader;

    invoke-virtual {v4}, Lorg/ow2/asmdex/ApplicationReader;->getDexFile()Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    move-result-object v4

    .line 862
    .local v4, "dexFile":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    new-instance v5, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-interface {v4}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getContents()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>([B)V

    .line 864
    .local v5, "inputDexFileByteArray":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v6

    .line 866
    .local v6, "currentDebugInfoItemOffset":I
    iget v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemOffset:I

    if-nez v7, :cond_4

    .line 867
    iput v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemOffset:I

    .line 870
    :cond_4
    invoke-virtual {v2, v5, v3}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexesForDebug(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v7

    .line 872
    .local v7, "debugInfoItem":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v8, v7}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 875
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v8, v6}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setDebugInfoItemOffset(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)V

    .line 877
    iget v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    .line 880
    .end local v1    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    .end local v2    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local v3    # "startDebugInfoToCopy":I
    .end local v4    # "dexFile":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .end local v5    # "inputDexFileByteArray":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local v6    # "currentDebugInfoItemOffset":I
    .end local v7    # "debugInfoItem":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 881
    :cond_6
    return-void
.end method

.method private writeEncodedArrayItems()V
    .locals 23

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v1

    iput v1, v0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsOffset:I

    .line 1067
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v1, "places":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/ApplicationWriter$1Place;>;"
    iget-object v2, v0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getClasses()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;

    .line 1077
    .local v3, "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getNbStaticFields()I

    move-result v4

    if-lez v4, :cond_d

    .line 1078
    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;->getStaticFields()Ljava/util/ArrayList;

    move-result-object v4

    .line 1080
    .local v4, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    const/4 v5, 0x0

    .line 1081
    .local v5, "found":Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .line 1082
    .local v6, "lastFinalStaticIndex":I
    :goto_1
    if-nez v5, :cond_2

    if-ltz v6, :cond_2

    .line 1083
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/ow2/asmdex/structureWriter/Field;

    .line 1084
    .local v9, "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-virtual {v9}, Lorg/ow2/asmdex/structureWriter/Field;->isFinalStatic()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lorg/ow2/asmdex/structureWriter/Field;->getValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Lorg/ow2/asmdex/structureWriter/Field;->getValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v10

    invoke-virtual {v10}, Lorg/ow2/asmdex/encodedValue/EncodedValue;->getType()I

    move-result v10

    const/16 v11, 0x1e

    if-eq v10, v11, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    :goto_2
    move v5, v8

    .line 1085
    if-nez v5, :cond_1

    .line 1086
    add-int/lit8 v6, v6, -0x1

    .line 1088
    .end local v9    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    :cond_1
    goto :goto_1

    .line 1090
    :cond_2
    if-eqz v5, :cond_c

    .line 1093
    iget-object v9, v0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v9}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v9

    .line 1096
    .local v9, "possibleOffset":I
    new-instance v10, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    .line 1099
    .local v10, "bv":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1102
    const/4 v11, 0x0

    .line 1103
    .local v11, "index":I
    :goto_3
    if-gt v11, v6, :cond_5

    .line 1104
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/ow2/asmdex/structureWriter/Field;

    .line 1107
    .local v12, "field":Lorg/ow2/asmdex/structureWriter/Field;
    invoke-virtual {v12}, Lorg/ow2/asmdex/structureWriter/Field;->getValue()Lorg/ow2/asmdex/encodedValue/EncodedValue;

    move-result-object v13

    if-nez v13, :cond_3

    .line 1108
    invoke-virtual {v12}, Lorg/ow2/asmdex/structureWriter/Field;->setNoValue()V

    .line 1110
    :cond_3
    iget-object v13, v0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v12, v13}, Lorg/ow2/asmdex/structureWriter/Field;->encodeValue(Lorg/ow2/asmdex/structureWriter/ConstantPool;)[B

    move-result-object v13

    .line 1112
    .local v13, "bytes":[B
    if-eqz v13, :cond_4

    .line 1113
    invoke-virtual {v10, v13}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([B)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1115
    :cond_4
    nop

    .end local v12    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    .end local v13    # "bytes":[B
    add-int/lit8 v11, v11, 0x1

    .line 1116
    goto :goto_3

    .line 1119
    :cond_5
    const/4 v12, 0x0

    .line 1120
    .local v12, "foundDuplicate":Z
    const/4 v13, 0x0

    .line 1121
    .local v13, "indexPlace":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v14

    .line 1122
    .local v14, "size":I
    const/4 v15, 0x0

    .line 1124
    .local v15, "scannedStructureOffset":I
    :goto_4
    if-nez v12, :cond_a

    if-ge v13, v14, :cond_a

    .line 1125
    invoke-virtual {v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v16

    .line 1126
    .local v16, "bytesPending":[B
    invoke-virtual {v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v8

    .line 1127
    .local v8, "bytesPendingSize":I
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lorg/ow2/asmdex/ApplicationWriter$1Place;

    .line 1128
    .local v7, "currentPlace":Lorg/ow2/asmdex/ApplicationWriter$1Place;
    move-object/from16 v17, v2

    iget v2, v7, Lorg/ow2/asmdex/ApplicationWriter$1Place;->size:I

    .line 1129
    .local v2, "placeSize":I
    if-ne v2, v8, :cond_9

    .line 1131
    const/16 v18, 0x0

    .line 1132
    .local v18, "posPending":I
    iget v15, v7, Lorg/ow2/asmdex/ApplicationWriter$1Place;->offset:I

    .line 1133
    const/16 v19, 0x0

    move-object/from16 v20, v4

    move/from16 v4, v18

    .line 1134
    .end local v18    # "posPending":I
    .local v4, "posPending":I
    .local v19, "difference":Z
    .local v20, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    :goto_5
    if-nez v19, :cond_7

    if-ge v4, v2, :cond_7

    .line 1135
    move/from16 v18, v2

    .end local v2    # "placeSize":I
    .local v18, "placeSize":I
    aget-byte v2, v16, v4

    move/from16 v21, v5

    .end local v5    # "found":Z
    .local v21, "found":Z
    iget-object v5, v0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v5

    add-int v22, v15, v4

    aget-byte v5, v5, v22

    if-eq v2, v5, :cond_6

    const/4 v2, 0x1

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    move/from16 v19, v2

    .line 1136
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v18

    move/from16 v5, v21

    goto :goto_5

    .line 1134
    .end local v18    # "placeSize":I
    .end local v21    # "found":Z
    .restart local v2    # "placeSize":I
    .restart local v5    # "found":Z
    :cond_7
    move/from16 v18, v2

    move/from16 v21, v5

    .line 1141
    .end local v2    # "placeSize":I
    .end local v5    # "found":Z
    .restart local v18    # "placeSize":I
    .restart local v21    # "found":Z
    if-nez v19, :cond_8

    const/4 v2, 0x1

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    :goto_7
    move v12, v2

    .end local v12    # "foundDuplicate":Z
    .local v2, "foundDuplicate":Z
    goto :goto_8

    .line 1129
    .end local v18    # "placeSize":I
    .end local v19    # "difference":Z
    .end local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v21    # "found":Z
    .local v2, "placeSize":I
    .local v4, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .restart local v5    # "found":Z
    .restart local v12    # "foundDuplicate":Z
    :cond_9
    move/from16 v18, v2

    move-object/from16 v20, v4

    move/from16 v21, v5

    .line 1144
    .end local v2    # "placeSize":I
    .end local v4    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v5    # "found":Z
    .restart local v18    # "placeSize":I
    .restart local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .restart local v21    # "found":Z
    :goto_8
    nop

    .end local v7    # "currentPlace":Lorg/ow2/asmdex/ApplicationWriter$1Place;
    .end local v8    # "bytesPendingSize":I
    .end local v16    # "bytesPending":[B
    .end local v18    # "placeSize":I
    add-int/lit8 v13, v13, 0x1

    .line 1145
    move-object/from16 v2, v17

    move-object/from16 v4, v20

    move/from16 v5, v21

    const/4 v7, 0x1

    goto :goto_4

    .line 1124
    .end local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v21    # "found":Z
    .restart local v4    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .restart local v5    # "found":Z
    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v20, v4

    move/from16 v21, v5

    .line 1148
    .end local v4    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v5    # "found":Z
    .restart local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .restart local v21    # "found":Z
    if-nez v12, :cond_b

    .line 1149
    iget v2, v0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsCount:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    iput v2, v0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsCount:I

    .line 1150
    new-instance v2, Lorg/ow2/asmdex/ApplicationWriter$1Place;

    invoke-virtual {v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v4

    invoke-direct {v2, v0, v9, v4}, Lorg/ow2/asmdex/ApplicationWriter$1Place;-><init>(Lorg/ow2/asmdex/ApplicationWriter;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    iget-object v2, v0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v10}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_9

    .line 1156
    :cond_b
    move v9, v15

    .line 1158
    :goto_9
    iget-object v2, v0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v2, v3, v9}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addOffsetForStaticValuesEncodedArrayItemOfClass(Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;I)V

    goto :goto_a

    .line 1090
    .end local v9    # "possibleOffset":I
    .end local v10    # "bv":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local v11    # "index":I
    .end local v12    # "foundDuplicate":Z
    .end local v13    # "indexPlace":I
    .end local v14    # "size":I
    .end local v15    # "scannedStructureOffset":I
    .end local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v21    # "found":Z
    .restart local v4    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .restart local v5    # "found":Z
    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v20, v4

    move/from16 v21, v5

    .end local v4    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v5    # "found":Z
    .restart local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .restart local v21    # "found":Z
    goto :goto_a

    .line 1077
    .end local v6    # "lastFinalStaticIndex":I
    .end local v20    # "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    .end local v21    # "found":Z
    :cond_d
    move-object/from16 v17, v2

    .line 1162
    .end local v3    # "cdi":Lorg/ow2/asmdex/structureWriter/ClassDefinitionItem;
    :goto_a
    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 1163
    :cond_e
    return-void
.end method

.method private writeFieldMethodIndexAnnotation(Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;II)I
    .locals 3
    .param p1, "annotationsHolder"    # Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;
    .param p2, "index"    # I
    .param p3, "offset"    # I

    .line 1033
    invoke-interface {p1}, Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;->getNbAnnotations()I

    move-result v0

    if-lez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, p2, p3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1035
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-interface {p1}, Lorg/ow2/asmdex/structureWriter/IAnnotationsHolder;->getAnnotationSetItem()Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItemOffset(Lorg/ow2/asmdex/structureWriter/AnnotationSetItem;)I

    move-result v1

    add-int/lit8 v2, p3, 0x4

    invoke-virtual {v0, v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1037
    add-int/lit8 v0, p3, 0x8

    return v0

    .line 1039
    :cond_0
    return p3
.end method

.method private writeFieldsInClassDataItem(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Field;",
            ">;)V"
        }
    .end annotation

    .line 1288
    .local p1, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Field;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1289
    return-void

    .line 1293
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1295
    .local v0, "sortedFields":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/ow2/asmdex/structureWriter/Field;>;"
    const/4 v1, 0x1

    .line 1296
    .local v1, "isFirstField":Z
    const/4 v2, 0x0

    .line 1297
    .local v2, "previousIndex":I
    const/4 v3, 0x0

    .line 1299
    .local v3, "indexToEncode":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ow2/asmdex/structureWriter/Field;

    .line 1301
    .local v5, "field":Lorg/ow2/asmdex/structureWriter/Field;
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldIndex(Lorg/ow2/asmdex/structureWriter/Field;)I

    move-result v6

    .line 1303
    .local v6, "fieldIndex":I
    if-eqz v1, :cond_1

    .line 1304
    move v3, v6

    .line 1305
    const/4 v1, 0x0

    goto :goto_1

    .line 1307
    :cond_1
    sub-int v3, v6, v2

    .line 1310
    :goto_1
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v7, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1311
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Field;->getAccess()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1313
    move v2, v6

    .line 1314
    .end local v5    # "field":Lorg/ow2/asmdex/structureWriter/Field;
    .end local v6    # "fieldIndex":I
    goto :goto_0

    .line 1315
    :cond_2
    return-void
.end method

.method private writeMap()V
    .locals 6

    .line 1323
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding()V

    .line 1326
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v0

    .line 1327
    .local v0, "mapOffset":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1329
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/16 v3, 0x34

    invoke-virtual {v1, v0, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1334
    const/4 v1, 0x1

    invoke-direct {p0, v2, v1, v2, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1335
    .local v2, "nbEntries":I
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    invoke-direct {p0, v1, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1337
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->typeIdsOffset:I

    const/4 v5, 0x2

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1339
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getPrototypeCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->prototypeIdsOffset:I

    const/4 v5, 0x3

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1341
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getFieldCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->fieldIdsOffset:I

    const/4 v5, 0x4

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1343
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->methodIdsOffset:I

    const/4 v5, 0x5

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1345
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getClassDefinitionCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDefinitionsOffset:I

    const/4 v5, 0x6

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1349
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetRefListsCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetRefListOffset:I

    const/16 v5, 0x1002

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1351
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationSetItemCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationSetItemOffset:I

    const/16 v5, 0x1003

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1353
    iget v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->codeItemCount:I

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->codeItemOffset:I

    const/16 v5, 0x2001

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1355
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationDirectoryItemCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationDirectoryItemsOffset:I

    const/16 v5, 0x2006

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1357
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeListCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->typeListOffset:I

    const/16 v5, 0x1001

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1359
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->stringDataOffset:I

    const/16 v5, 0x2002

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1361
    iget v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemCount:I

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->debugInfoItemOffset:I

    const/16 v5, 0x2003

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1363
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getAnnotationItemCount()I

    move-result v3

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->annotationItemsOffset:I

    const/16 v5, 0x2004

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1365
    iget v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsCount:I

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->encodedArrayItemsOffset:I

    const/16 v5, 0x2005

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1367
    iget v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemCount:I

    iget v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->classDataItemOffset:I

    const/16 v5, 0x2000

    invoke-direct {p0, v5, v3, v4, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v2

    .line 1369
    const/16 v3, 0x1000

    invoke-direct {p0, v3, v1, v0, v2}, Lorg/ow2/asmdex/ApplicationWriter;->writeMapItem(IIII)I

    move-result v1

    .line 1372
    .end local v2    # "nbEntries":I
    .local v1, "nbEntries":I
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v1, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1373
    return-void
.end method

.method private writeMapItem(IIII)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "size"    # I
    .param p3, "offset"    # I
    .param p4, "nbEntries"    # I

    .line 1384
    if-lez p2, :cond_0

    .line 1385
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1386
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1387
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, p2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1388
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0, p3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1389
    add-int/lit8 p4, p4, 0x1

    .line 1391
    :cond_0
    return p4
.end method

.method private writeMethodsInClassDataItem(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;)V"
        }
    .end annotation

    .line 1250
    .local p1, "methods":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/ow2/asmdex/structureWriter/Method;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    return-void

    .line 1255
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1257
    .local v0, "sortedMethods":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lorg/ow2/asmdex/structureWriter/Method;>;"
    const/4 v1, 0x1

    .line 1258
    .local v1, "isFirstMethod":Z
    const/4 v2, 0x0

    .line 1259
    .local v2, "previousIndex":I
    const/4 v3, 0x0

    .line 1261
    .local v3, "indexToEncode":I
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/ow2/asmdex/structureWriter/Method;

    .line 1263
    .local v5, "method":Lorg/ow2/asmdex/structureWriter/Method;
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getMethodIndex(Lorg/ow2/asmdex/structureWriter/Method;)I

    move-result v6

    .line 1265
    .local v6, "methodIndex":I
    if-eqz v1, :cond_1

    .line 1266
    move v3, v6

    .line 1267
    const/4 v1, 0x0

    goto :goto_1

    .line 1269
    :cond_1
    sub-int v3, v6, v2

    .line 1272
    :goto_1
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v7, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1273
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Method;->getAccess()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1274
    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v7

    .line 1275
    .local v7, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v7, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getOffset()I

    move-result v9

    :goto_2
    invoke-virtual {v8, v9}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 1277
    move v2, v6

    .line 1278
    .end local v5    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    .end local v6    # "methodIndex":I
    .end local v7    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    goto :goto_0

    .line 1279
    :cond_3
    return-void
.end method

.method private writeMethodsOfCodeItem(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureWriter/Method;",
            ">;)V"
        }
    .end annotation

    .line 630
    .local p1, "methods":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureWriter/Method;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/Method;

    .line 631
    .local v1, "method":Lorg/ow2/asmdex/structureWriter/Method;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->supportsCodeItem()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 632
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding()V

    .line 633
    iget v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->codeItemOffset:I

    if-nez v2, :cond_0

    .line 634
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->codeItemOffset:I

    .line 638
    :cond_0
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getStartBytecodeToCopy()I

    move-result v2

    .line 639
    .local v2, "startByteCodeToCopy":I
    if-nez v2, :cond_2

    .line 641
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v3

    .line 642
    .local v3, "code":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v4

    if-lez v4, :cond_1

    .line 644
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v4

    .line 645
    .local v4, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setOffset(I)V

    .line 646
    invoke-virtual {v4}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexes()V

    .line 647
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 650
    invoke-virtual {v4}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getCodeItemTryCatch()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v5

    .line 651
    .local v5, "tryCatchCode":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    if-eqz v5, :cond_1

    .line 652
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 655
    .end local v3    # "code":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local v4    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local v5    # "tryCatchCode":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    :cond_1
    goto :goto_1

    .line 658
    :cond_2
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/Method;->getCodeItem()Lorg/ow2/asmdex/structureWriter/CodeItem;

    move-result-object v3

    .line 659
    .local v3, "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v4

    .line 660
    .local v4, "outputFileByteCodeOffset":I
    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/structureWriter/CodeItem;->setOffset(I)V

    .line 662
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->applicationReader:Lorg/ow2/asmdex/ApplicationReader;

    invoke-virtual {v5}, Lorg/ow2/asmdex/ApplicationReader;->getDexFile()Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;

    move-result-object v5

    .line 667
    .local v5, "dexFile":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    const/16 v6, 0x10

    .line 668
    .local v6, "lengthByteCode":I
    add-int/lit8 v7, v2, 0x6

    invoke-interface {v5, v7}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 669
    invoke-interface {v5}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v7

    .line 671
    .local v7, "nbTries":I
    invoke-interface {v5}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v8

    .line 672
    .local v8, "startDebugInfoItem":I
    invoke-virtual {v1, v8}, Lorg/ow2/asmdex/structureWriter/Method;->setStartDebugInfoToCopy(I)V

    .line 673
    invoke-interface {v5}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v9

    .line 674
    .local v9, "insnsSizeInWord":I
    mul-int/lit8 v10, v9, 0x2

    add-int/2addr v6, v10

    .line 675
    if-eqz v7, :cond_3

    rem-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_3

    .line 676
    add-int/lit8 v6, v6, 0x2

    .line 680
    :cond_3
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-interface {v5}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getContents()[B

    move-result-object v11

    invoke-virtual {v10, v11, v2, v6}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteArray([BII)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 684
    iget-object v10, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v10, v4}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexesByteCode(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)V

    .line 689
    if-eqz v7, :cond_4

    .line 690
    new-instance v10, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-interface {v5}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getContents()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>([B)V

    .line 691
    .local v10, "inputDexFileByteArray":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    add-int v11, v2, v6

    invoke-virtual {v3, v10, v11, v7}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexesTryCatch(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v11

    .line 693
    .local v11, "tryCatch":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    iget-object v12, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v12, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putByteVector(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 697
    .end local v3    # "codeItem":Lorg/ow2/asmdex/structureWriter/CodeItem;
    .end local v4    # "outputFileByteCodeOffset":I
    .end local v5    # "dexFile":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .end local v6    # "lengthByteCode":I
    .end local v7    # "nbTries":I
    .end local v8    # "startDebugInfoItem":I
    .end local v9    # "insnsSizeInWord":I
    .end local v10    # "inputDexFileByteArray":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local v11    # "tryCatch":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    :cond_4
    :goto_1
    iget v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->codeItemCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->codeItemCount:I

    .line 699
    .end local v1    # "method":Lorg/ow2/asmdex/structureWriter/Method;
    .end local v2    # "startByteCodeToCopy":I
    :cond_5
    goto/16 :goto_0

    .line 700
    :cond_6
    return-void
.end method

.method private writePrototypeIds()V
    .locals 8

    .line 766
    iget v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->prototypeIdsOffset:I

    .line 768
    .local v0, "prototypeIdsOffset":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getPrototypes()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/Prototype;

    .line 769
    .local v2, "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Prototype;->getShortyDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 770
    .local v3, "shortyDescriptor":Ljava/lang/String;
    iget-object v4, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v5, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 771
    add-int/lit8 v0, v0, 0x4

    .line 773
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Prototype;->getReturnType()Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "returnType":Ljava/lang/String;
    iget-object v5, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v4}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 775
    add-int/lit8 v0, v0, 0x4

    .line 778
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/Prototype;->getParameterTypes()Lorg/ow2/asmdex/structureWriter/TypeList;

    move-result-object v5

    .line 779
    .local v5, "typeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    invoke-virtual {v5}, Lorg/ow2/asmdex/structureWriter/TypeList;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v5}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeListOffset(Lorg/ow2/asmdex/structureWriter/TypeList;)I

    move-result v6

    .line 780
    .local v6, "typeListOffset":I
    :goto_1
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v7, v6, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 781
    nop

    .end local v2    # "prototype":Lorg/ow2/asmdex/structureWriter/Prototype;
    .end local v3    # "shortyDescriptor":Ljava/lang/String;
    .end local v4    # "returnType":Ljava/lang/String;
    .end local v5    # "typeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    .end local v6    # "typeListOffset":I
    add-int/lit8 v0, v0, 0x4

    .line 782
    goto :goto_0

    .line 783
    :cond_1
    return-void
.end method

.method private writeStringDataItemSection()V
    .locals 5

    .line 791
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStringCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 793
    iget v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->stringIdsOffset:I

    .line 795
    .local v0, "stringIdsOffset":I
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v1

    iput v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->stringDataOffset:I

    .line 797
    iget-object v1, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getStrings()Ljava/util/TreeSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 799
    .local v2, "string":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 800
    add-int/lit8 v0, v0, 0x4

    .line 803
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 804
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putMUTF8(Ljava/lang/String;)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 805
    .end local v2    # "string":Ljava/lang/String;
    goto :goto_0

    .line 807
    .end local v0    # "stringIdsOffset":I
    :cond_0
    return-void
.end method

.method private writeTypeList()V
    .locals 9

    .line 741
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeList()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/TypeList;

    .line 742
    .local v1, "typeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->addPadding()V

    .line 743
    iget v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->typeListOffset:I

    if-nez v2, :cond_0

    .line 744
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v2

    iput v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->typeListOffset:I

    .line 747
    :cond_0
    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->setTypeListOffset(Lorg/ow2/asmdex/structureWriter/TypeList;I)V

    .line 750
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/TypeList;->size()I

    move-result v2

    .line 751
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 752
    iget-object v3, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 753
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/TypeList;->getTypeList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 754
    .local v6, "type":Ljava/lang/String;
    iget-object v7, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v8, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v8, v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getTypeIndex(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 753
    .end local v6    # "type":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 757
    .end local v1    # "typeList":Lorg/ow2/asmdex/structureWriter/TypeList;
    .end local v2    # "size":I
    :cond_1
    goto :goto_0

    .line 758
    :cond_2
    return-void
.end method


# virtual methods
.method public addFieldFromApplicationReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "fieldName"    # Ljava/lang/String;

    .line 1438
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/high16 v4, 0x40000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addFieldToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/Object;)Lorg/ow2/asmdex/structureWriter/Field;

    .line 1439
    return-void
.end method

.method public addMethodFromApplicationReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "prototype"    # Ljava/lang/String;
    .param p3, "methodName"    # Ljava/lang/String;

    .line 1451
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    const/high16 v4, 0x40000

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v6}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addMethodToConstantPool(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/structureWriter/Method;

    .line 1453
    return-void
.end method

.method public addStringFromApplicationReader(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 1414
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addStringToConstantPool(Ljava/lang/String;)V

    .line 1415
    return-void
.end method

.method public addTypeNameFromApplicationReader(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 1425
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->addTypeToConstantPool(Ljava/lang/String;)V

    .line 1426
    return-void
.end method

.method public getApplicationReader()Lorg/ow2/asmdex/ApplicationReader;
    .locals 1

    .line 1403
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->applicationReader:Lorg/ow2/asmdex/ApplicationReader;

    return-object v0
.end method

.method public getConstantPool()Lorg/ow2/asmdex/structureWriter/ConstantPool;
    .locals 1

    .line 311
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    return-object v0
.end method

.method public toByteArray()[B
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/ow2/asmdex/ApplicationWriter;->out:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v0, :cond_0

    .line 294
    const/4 v0, 0x0

    return-object v0

    .line 297
    :cond_0
    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getData()[B

    move-result-object v0

    return-object v0
.end method

.method public visit()V
    .locals 0

    .line 241
    return-void
.end method

.method public visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;
    .locals 9
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 267
    new-instance v8, Lorg/ow2/asmdex/ClassWriter;

    iget-object v2, p0, Lorg/ow2/asmdex/ApplicationWriter;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    move-object v0, v8

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/ow2/asmdex/ClassWriter;-><init>(Lorg/ow2/asmdex/ApplicationWriter;Lorg/ow2/asmdex/structureWriter/ConstantPool;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v8
.end method

.method public visitEnd()V
    .locals 0

    .line 276
    invoke-direct {p0}, Lorg/ow2/asmdex/ApplicationWriter;->generateDexFile()V

    .line 277
    return-void
.end method
