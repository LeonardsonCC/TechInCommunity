.class public Lorg/ow2/asmdex/structureWriter/CodeItem;
.super Ljava/lang/Object;
.source "CodeItem.java"


# static fields
.field private static final DEBUG_INFO_OFFSET_OFFSET:I = 0x8

.field private static final HANDLER_OFFSET_IN_TRY_ITEM_STRUCTURE:I = 0x6

.field public static final HEADER_SIZE:I = 0x10

.field private static final INDEX_FIELD:B = 0x2t

.field private static final INDEX_METHOD:B = 0x4t

.field private static final INDEX_STRING:B = 0x1t

.field private static final INDEX_TYPE:B = 0x3t

.field public static final INSNS_SIZE_OFFSET:I = 0xc

.field public static final TRIES_SIZE_FIELD_OFFSET:I = 0x6

.field private static final TRY_ITEM_STRUCTURE_SIZE:I = 0x8

.field private static final typeOfIndexInInstructions:[B


# instance fields
.field private codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

.field private codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

.field private final constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

.field private debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

.field private encodedCatchHandlerToRelativeOffset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private encodedCatchHandlers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private firstLineNumber:I

.field private incomingArgumentsSizeInWord:I

.field private instructions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/instruction/Instruction;",
            ">;"
        }
    .end annotation
.end field

.field private labels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation
.end field

.field private method:Lorg/ow2/asmdex/structureWriter/Method;

.field private offset:I

.field private outgoingArgumentsSizeInWord:I

.field private registerSize:I

.field private size:I

.field private tryCatchToEncodedCatchHandler:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/ow2/asmdex/structureWriter/TryCatch;",
            "Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;",
            ">;"
        }
    .end annotation
.end field

.field private tryCatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ow2/asmdex/structureWriter/TryCatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 371
    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/ow2/asmdex/structureWriter/CodeItem;->typeOfIndexInInstructions:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x3t
        0x0t
        0x0t
        0x3t
        0x3t
        0x0t
        0x3t
        0x3t
        0x3t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x0t
        0x4t
        0x4t
        0x4t
        0x4t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Lorg/ow2/asmdex/structureWriter/Method;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 2
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;
    .param p2, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->labels:Ljava/util/List;

    .line 125
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->incomingArgumentsSizeInWord:I

    .line 130
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->outgoingArgumentsSizeInWord:I

    .line 136
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->registerSize:I

    .line 141
    iput v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->firstLineNumber:I

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatches:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlers:Ljava/util/HashSet;

    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatchToEncodedCatchHandler:Ljava/util/HashMap;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlerToRelativeOffset:Ljava/util/HashMap;

    .line 189
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->method:Lorg/ow2/asmdex/structureWriter/Method;

    .line 190
    iput-object p2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 192
    new-instance v0, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    invoke-direct {v0, p2}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    .line 193
    return-void
.end method

.method private writeTryCatches(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V
    .locals 9
    .param p1, "constantPool"    # Lorg/ow2/asmdex/structureWriter/ConstantPool;

    .line 770
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getTriesSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 771
    return-void

    .line 773
    :cond_0
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 776
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/ow2/asmdex/structureWriter/TryCatch;

    .line 777
    .local v1, "tc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/TryCatch;->getStart()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v2

    .line 778
    .local v2, "startAddr":I
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/TryCatch;->getEnd()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ow2/asmdex/structureCommon/Label;->getOffset()I

    move-result v3

    .line 779
    .local v3, "endAddr":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 780
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    sub-int v5, v3, v2

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 781
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 785
    new-instance v4, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;

    invoke-direct {v4, p1}, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;-><init>(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 786
    .local v4, "ech":Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
    invoke-virtual {v1}, Lorg/ow2/asmdex/structureWriter/TryCatch;->getExceptionHandlers()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;

    .line 787
    .local v6, "eh":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    invoke-virtual {v6}, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/ow2/asmdex/structureWriter/ExceptionHandler;->getHandler()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->addTypeAddrPair(Ljava/lang/String;Lorg/ow2/asmdex/structureCommon/Label;)V

    .line 788
    .end local v6    # "eh":Lorg/ow2/asmdex/structureWriter/ExceptionHandler;
    goto :goto_1

    .line 789
    :cond_1
    iget-object v5, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlers:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v5, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatchToEncodedCatchHandler:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    .end local v1    # "tc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    .end local v2    # "startAddr":I
    .end local v3    # "endAddr":I
    .end local v4    # "ech":Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
    goto :goto_0

    .line 796
    :cond_2
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v0

    .line 798
    .local v0, "absoluteOffsetEncodedCatchHandlerList":I
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlers:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 800
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;

    .line 802
    .local v2, "ech":Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v3

    sub-int/2addr v3, v0

    .line 803
    .local v3, "offsetEncodedCatchHandlerCurrentItem":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlerToRelativeOffset:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;)V

    .line 805
    .end local v2    # "ech":Lorg/ow2/asmdex/structureWriter/EncodedCatchHandler;
    .end local v3    # "offsetEncodedCatchHandlerCurrentItem":I
    goto :goto_2

    .line 808
    :cond_3
    const/4 v1, 0x6

    .line 809
    .local v1, "offset":I
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/ow2/asmdex/structureWriter/TryCatch;

    .line 810
    .local v3, "tc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v5, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlerToRelativeOffset:Ljava/util/HashMap;

    iget-object v6, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatchToEncodedCatchHandler:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 811
    nop

    .end local v3    # "tc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    add-int/lit8 v1, v1, 0x8

    .line 812
    goto :goto_3

    .line 813
    :cond_4
    return-void
.end method


# virtual methods
.method public addInstruction(Lorg/ow2/asmdex/instruction/Instruction;)V
    .locals 2
    .param p1, "instruction"    # Lorg/ow2/asmdex/instruction/Instruction;

    .line 240
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    invoke-virtual {p1}, Lorg/ow2/asmdex/instruction/Instruction;->getSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    .line 242
    return-void
.end method

.method public addLabel(Lorg/ow2/asmdex/structureCommon/Label;)V
    .locals 3
    .param p1, "label"    # Lorg/ow2/asmdex/structureCommon/Label;

    .line 220
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/ow2/asmdex/structureCommon/Label;->isResolved()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "found":Z
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 225
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    goto :goto_0

    .line 229
    :cond_1
    if-nez v0, :cond_2

    .line 230
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->labels:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v0    # "found":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureCommon/Label;>;"
    :cond_2
    return-void
.end method

.method public addTryCatch(Lorg/ow2/asmdex/structureWriter/TryCatch;)V
    .locals 5
    .param p1, "tryCatch"    # Lorg/ow2/asmdex/structureWriter/TryCatch;

    .line 253
    const/4 v0, 0x0

    .line 254
    .local v0, "foundTc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 255
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/ow2/asmdex/structureWriter/TryCatch;>;"
    :goto_0
    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 256
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/structureWriter/TryCatch;

    .line 257
    .local v2, "tc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/TryCatch;->getStart()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v3

    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/TryCatch;->getStart()Lorg/ow2/asmdex/structureCommon/Label;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 258
    move-object v0, v2

    .line 260
    .end local v2    # "tc":Lorg/ow2/asmdex/structureWriter/TryCatch;
    :cond_0
    goto :goto_0

    .line 262
    :cond_1
    if-eqz v0, :cond_2

    .line 263
    invoke-virtual {p1}, Lorg/ow2/asmdex/structureWriter/TryCatch;->getExceptionHandlers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/ow2/asmdex/structureWriter/TryCatch;->addExceptionHandlers(Ljava/util/ArrayList;)V

    goto :goto_1

    .line 265
    :cond_2
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatches:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :goto_1
    return-void
.end method

.method public areSymbolicIndexesUsedInDebugCodeItem()Z
    .locals 1

    .line 757
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->areSymbolicIndexesUsed()Z

    move-result v0

    return v0
.end method

.method public free()V
    .locals 1

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->labels:Ljava/util/List;

    .line 207
    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    .line 208
    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlers:Ljava/util/HashSet;

    .line 209
    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatchToEncodedCatchHandler:Ljava/util/HashMap;

    .line 210
    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->encodedCatchHandlerToRelativeOffset:Ljava/util/HashMap;

    .line 212
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->free()V

    .line 213
    return-void
.end method

.method public generateCodeItemCode()V
    .locals 9

    .line 279
    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 281
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/Method;->getLocalVariables()Ljava/util/List;

    move-result-object v0

    .line 285
    .local v0, "localVariables":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/structureCommon/LocalVariable;>;"
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 288
    .local v1, "mustEncodeMethod":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 289
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->method:Lorg/ow2/asmdex/structureWriter/Method;

    invoke-virtual {v4}, Lorg/ow2/asmdex/structureWriter/Method;->getParameters()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p0, v0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->initializeDebugInfoItem([Ljava/lang/String;Lorg/ow2/asmdex/structureWriter/CodeItem;Ljava/util/List;)V

    .line 293
    :cond_1
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getRegistersSize()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 294
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->incomingArgumentsSizeInWord:I

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 295
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->outgoingArgumentsSizeInWord:I

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 296
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getTriesSize()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 297
    iget-object v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v3, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 298
    iget v3, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    div-int/lit8 v3, v3, 0x2

    .line 299
    .local v3, "sizeWord":I
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4, v3}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 301
    iget-object v4, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v4

    .line 303
    .local v4, "offsetByteCode":I
    if-eqz v1, :cond_4

    .line 304
    iget-object v5, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/ow2/asmdex/instruction/Instruction;

    .line 305
    .local v6, "instruction":Lorg/ow2/asmdex/instruction/Instruction;
    iget-object v7, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    iget-object v8, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v8}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, v6, v8}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->parseDebugInformation(Lorg/ow2/asmdex/instruction/Instruction;I)V

    .line 306
    iget-object v7, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    iget-object v8, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v6, v7, v8}, Lorg/ow2/asmdex/instruction/Instruction;->write(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 307
    .end local v6    # "instruction":Lorg/ow2/asmdex/instruction/Instruction;
    goto :goto_1

    .line 310
    :cond_2
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getTriesSize()I

    move-result v5

    if-eqz v5, :cond_3

    rem-int/lit8 v5, v3, 0x2

    if-eqz v5, :cond_3

    .line 311
    iget-object v5, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {v5, v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 315
    :cond_3
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-direct {p0, v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->writeTryCatches(Lorg/ow2/asmdex/structureWriter/ConstantPool;)V

    .line 318
    iget-object v2, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    invoke-virtual {v2}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->closeDebugInfoItem()V

    .line 320
    :cond_4
    return-void
.end method

.method public getCodeItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1

    .line 722
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->generateCodeItemCode()V

    .line 725
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    return-object v0
.end method

.method public getCodeItemTryCatch()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1

    .line 736
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    if-nez v0, :cond_0

    .line 737
    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->generateCodeItemCode()V

    .line 739
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    return-object v0
.end method

.method public getDebugInfoItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1

    .line 748
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    invoke-virtual {v0}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->getDebugInfoItemCode()Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    return-object v0
.end method

.method public getFirstLineNumber()I
    .locals 1

    .line 711
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->firstLineNumber:I

    return v0
.end method

.method public getIncomingArgumentsSizeInWord()I
    .locals 1

    .line 635
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->incomingArgumentsSizeInWord:I

    return v0
.end method

.method public getLabels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/structureCommon/Label;",
            ">;"
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->labels:Ljava/util/List;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 668
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->offset:I

    return v0
.end method

.method public getOutgoingArgumentsSizeInWord()I
    .locals 1

    .line 651
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->outgoingArgumentsSizeInWord:I

    return v0
.end method

.method public getRegistersSize()I
    .locals 1

    .line 619
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->registerSize:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 595
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    return v0
.end method

.method public getTriesSize()I
    .locals 1

    .line 603
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->tryCatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public mapResolvedIndexes()V
    .locals 3

    .line 358
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemCode:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexesByteCode(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)V

    .line 359
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-virtual {p0}, Lorg/ow2/asmdex/structureWriter/CodeItem;->getTriesSize()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lorg/ow2/asmdex/structureWriter/CodeItem;->mapResolvedIndexesTryCatch(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->codeItemTryCatch:Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 360
    return-void
.end method

.method public mapResolvedIndexesByteCode(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)V
    .locals 17
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "offsetByteCode"    # I

    .line 402
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual/range {p1 .. p1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;-><init>([B)V

    move-object v3, v0

    .line 406
    .local v3, "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    add-int/lit8 v0, p2, 0xc

    invoke-interface {v3, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 407
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v0

    const/4 v4, 0x2

    mul-int/lit8 v5, v0, 0x2

    .line 408
    .local v5, "insnsSizeInBytes":I
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v0

    add-int v6, v5, v0

    .line 409
    .local v6, "endPos":I
    const/4 v0, 0x0

    .line 412
    .local v0, "indexFoundType":I
    :goto_0
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v7

    if-ge v7, v6, :cond_10

    .line 413
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ubyte()S

    move-result v7

    .line 414
    .local v7, "opcode":I
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ubyte()S

    move-result v8

    .line 415
    .local v8, "secondByte":I
    const/4 v9, 0x2

    .line 417
    .local v9, "indexSize":I
    const/4 v10, 0x3

    const/4 v11, 0x1

    if-nez v7, :cond_4

    .line 419
    const/4 v12, 0x0

    .line 420
    .local v12, "bytesToSkip":I
    if-eq v8, v11, :cond_2

    if-eq v8, v4, :cond_1

    if-eq v8, v10, :cond_0

    goto :goto_1

    .line 433
    :cond_0
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v10

    .line 434
    .local v10, "width":I
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v13

    .line 435
    .local v13, "size":I
    mul-int v14, v13, v10

    add-int/2addr v14, v11

    div-int/2addr v14, v4

    mul-int/lit8 v12, v14, 0x2

    .line 436
    goto :goto_1

    .line 428
    .end local v10    # "width":I
    .end local v13    # "size":I
    :cond_1
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v10

    .line 429
    .local v10, "size":I
    mul-int/lit8 v11, v10, 0x4

    mul-int/lit8 v12, v11, 0x2

    .line 430
    goto :goto_1

    .line 422
    .end local v10    # "size":I
    :cond_2
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v10

    .line 423
    .restart local v10    # "size":I
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->skipInt()V

    .line 424
    mul-int/lit8 v12, v10, 0x4

    .line 425
    nop

    .line 439
    .end local v10    # "size":I
    :goto_1
    if-lez v12, :cond_3

    .line 440
    invoke-interface {v3, v12}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 442
    .end local v12    # "bytesToSkip":I
    :cond_3
    goto/16 :goto_6

    .line 444
    :cond_4
    sget-object v12, Lorg/ow2/asmdex/structureWriter/CodeItem;->typeOfIndexInInstructions:[B

    aget-byte v12, v12, v7

    .line 445
    .end local v0    # "indexFoundType":I
    .local v12, "indexFoundType":I
    const/16 v0, 0x1b

    if-ne v7, v0, :cond_5

    .line 446
    const/4 v9, 0x4

    .line 450
    :cond_5
    if-nez v12, :cond_7

    .line 452
    invoke-static {v7}, Lorg/ow2/asmdex/instruction/Instruction;->getInstructionSizeInByte(I)B

    move-result v0

    sub-int/2addr v0, v4

    .line 453
    .local v0, "instructionSize":I
    if-lez v0, :cond_6

    .line 454
    invoke-interface {v3, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->relativeSeek(I)V

    .line 456
    .end local v0    # "instructionSize":I
    :cond_6
    goto/16 :goto_5

    .line 457
    :cond_7
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v13

    .line 459
    .local v13, "savedReaderOffset":I
    move v14, v13

    .line 460
    .local v14, "indexOffset":I
    invoke-interface {v3, v14}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 462
    if-ne v9, v4, :cond_8

    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    goto :goto_2

    .line 463
    :cond_8
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v0

    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v15

    shl-int/lit8 v15, v15, 0x10

    add-int/2addr v0, v15

    :goto_2
    move v15, v0

    .line 465
    .local v15, "symbolicIndex":I
    const/16 v16, -0x1

    .line 466
    .local v16, "resolvedIndex":I
    if-eq v12, v11, :cond_d

    if-eq v12, v4, :cond_c

    if-eq v12, v10, :cond_b

    const/4 v0, 0x4

    if-ne v12, v0, :cond_9

    .line 477
    iget-object v0, v1, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedMethodIndexFromSymbolicMethodIndex(I)I

    move-result v16

    .line 478
    move/from16 v0, v16

    goto :goto_3

    .line 481
    :cond_9
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v10, "Unknown Index type."

    invoke-direct {v0, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v3    # "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .end local v5    # "insnsSizeInBytes":I
    .end local v6    # "endPos":I
    .end local v7    # "opcode":I
    .end local v8    # "secondByte":I
    .end local v9    # "indexSize":I
    .end local v12    # "indexFoundType":I
    .end local v13    # "savedReaderOffset":I
    .end local v14    # "indexOffset":I
    .end local v15    # "symbolicIndex":I
    .end local v16    # "resolvedIndex":I
    .end local p1    # "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .end local p2    # "offsetByteCode":I
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    .restart local v3    # "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    .restart local v5    # "insnsSizeInBytes":I
    .restart local v6    # "endPos":I
    .restart local v7    # "opcode":I
    .restart local v8    # "secondByte":I
    .restart local v9    # "indexSize":I
    .restart local v12    # "indexFoundType":I
    .restart local v13    # "savedReaderOffset":I
    .restart local v14    # "indexOffset":I
    .restart local v15    # "symbolicIndex":I
    .restart local v16    # "resolvedIndex":I
    .restart local p1    # "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .restart local p2    # "offsetByteCode":I
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/tns/Runtime;->isDebuggable()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 490
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    move/from16 v0, v16

    goto :goto_3

    .line 474
    :cond_b
    iget-object v0, v1, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedTypeIndexFromSymbolicTypeIndex(I)I

    move-result v16

    .line 475
    move/from16 v0, v16

    goto :goto_3

    .line 471
    :cond_c
    iget-object v0, v1, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedFieldIndexFromSymbolicFieldIndex(I)I

    move-result v16

    .line 472
    move/from16 v0, v16

    goto :goto_3

    .line 468
    :cond_d
    iget-object v0, v1, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v0, v15}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedStringIndexFromSymbolicStringIndex(I)I

    move-result v16

    .line 469
    move/from16 v0, v16

    .line 490
    .end local v16    # "resolvedIndex":I
    .local v0, "resolvedIndex":I
    :goto_3
    if-ne v9, v4, :cond_e

    .line 491
    invoke-virtual {v2, v0, v14}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    goto :goto_4

    .line 493
    :cond_e
    const v10, 0xffff

    and-int v11, v0, v10

    invoke-virtual {v2, v11, v14}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 494
    shr-int/lit8 v11, v0, 0x10

    and-int/2addr v10, v11

    add-int/lit8 v11, v14, 0x2

    invoke-virtual {v2, v10, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 498
    :goto_4
    invoke-static {v7}, Lorg/ow2/asmdex/instruction/Instruction;->getInstructionSizeInByte(I)B

    move-result v10

    sub-int/2addr v10, v4

    .line 499
    .local v10, "instructionSize":I
    if-lez v10, :cond_f

    .line 500
    add-int v11, v13, v10

    invoke-interface {v3, v11}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 504
    .end local v0    # "resolvedIndex":I
    .end local v7    # "opcode":I
    .end local v8    # "secondByte":I
    .end local v9    # "indexSize":I
    .end local v10    # "instructionSize":I
    .end local v13    # "savedReaderOffset":I
    .end local v14    # "indexOffset":I
    .end local v15    # "symbolicIndex":I
    :cond_f
    :goto_5
    move v0, v12

    .end local v12    # "indexFoundType":I
    .local v0, "indexFoundType":I
    :goto_6
    goto/16 :goto_0

    .line 505
    :cond_10
    return-void
.end method

.method public mapResolvedIndexesForDebug(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 1
    .param p1, "in"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "offsetInputBuffer"    # I

    .line 347
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->debugInfoItem:Lorg/ow2/asmdex/structureWriter/DebugInfoItem;

    invoke-virtual {v0, p1, p2}, Lorg/ow2/asmdex/structureWriter/DebugInfoItem;->mapResolvedIndexes(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    move-result-object v0

    return-object v0
.end method

.method public mapResolvedIndexesTryCatch(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .locals 18
    .param p1, "in"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "offsetInInputArray"    # I
    .param p3, "nbTries"    # I

    .line 518
    move/from16 v0, p2

    move/from16 v1, p3

    new-instance v2, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    invoke-direct {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;-><init>()V

    .line 520
    .local v2, "out":Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    if-nez v1, :cond_0

    .line 521
    return-object v2

    .line 524
    :cond_0
    new-instance v3, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;

    invoke-virtual/range {p1 .. p1}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getBuffer()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/ow2/asmdex/lowLevelUtils/DalvikValueReader;-><init>([B)V

    .line 526
    .local v3, "reader":Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;
    invoke-interface {v3, v0}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 529
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 530
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uint()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 531
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 532
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v5

    invoke-virtual {v2, v5}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 529
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 536
    .end local v4    # "i":I
    :cond_1
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v4

    .line 537
    .local v4, "absoluteOldPos":I
    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v5

    .line 538
    .local v5, "absoluteNewPos":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v6, "oldToNewHandlerOffsets":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v7

    .line 541
    .local v7, "nbEncodedCatchHandler":I
    invoke-virtual {v2, v7}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 543
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_6

    .line 545
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->getPos()I

    move-result v9

    sub-int/2addr v9, v4

    .line 546
    .local v9, "oldOffset":I
    invoke-virtual {v2}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->getLength()I

    move-result v10

    sub-int/2addr v10, v5

    .line 547
    .local v10, "newOffset":I
    if-eq v9, v10, :cond_2

    .line 548
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    :cond_2
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->sleb128()I

    move-result v11

    .line 552
    .local v11, "readSize":I
    if-ltz v11, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    neg-int v12, v11

    .line 553
    .local v12, "size":I
    :goto_2
    invoke-virtual {v2, v11}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putSleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 555
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v12, :cond_4

    .line 556
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v14

    .line 557
    .local v14, "symbolicIndex":I
    move-object/from16 v15, p0

    move/from16 v16, v4

    .end local v4    # "absoluteOldPos":I
    .local v16, "absoluteOldPos":I
    iget-object v4, v15, Lorg/ow2/asmdex/structureWriter/CodeItem;->constantPool:Lorg/ow2/asmdex/structureWriter/ConstantPool;

    invoke-virtual {v4, v14}, Lorg/ow2/asmdex/structureWriter/ConstantPool;->getResolvedTypeIndexFromSymbolicTypeIndex(I)I

    move-result v4

    .line 558
    .local v4, "resolvedIndex":I
    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 560
    move/from16 v17, v4

    .end local v4    # "resolvedIndex":I
    .local v17, "resolvedIndex":I
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 555
    .end local v14    # "symbolicIndex":I
    .end local v17    # "resolvedIndex":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    goto :goto_3

    .end local v16    # "absoluteOldPos":I
    .local v4, "absoluteOldPos":I
    :cond_4
    move-object/from16 v15, p0

    move/from16 v16, v4

    .line 563
    .end local v4    # "absoluteOldPos":I
    .end local v13    # "j":I
    .restart local v16    # "absoluteOldPos":I
    if-gtz v11, :cond_5

    .line 564
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->uleb128()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putUleb128(I)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 543
    .end local v9    # "oldOffset":I
    .end local v10    # "newOffset":I
    .end local v11    # "readSize":I
    .end local v12    # "size":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    move/from16 v4, v16

    goto :goto_1

    .end local v16    # "absoluteOldPos":I
    .restart local v4    # "absoluteOldPos":I
    :cond_6
    move-object/from16 v15, p0

    move/from16 v16, v4

    .line 568
    .end local v4    # "absoluteOldPos":I
    .end local v8    # "i":I
    .restart local v16    # "absoluteOldPos":I
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 570
    const/4 v4, 0x6

    .line 571
    .local v4, "offset":I
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_4
    if-ge v8, v1, :cond_8

    .line 572
    add-int v9, v0, v4

    invoke-interface {v3, v9}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->seek(I)V

    .line 573
    invoke-interface {v3}, Lorg/ow2/asmdex/lowLevelUtils/IDalvikValueReader;->ushort()I

    move-result v9

    .line 574
    .local v9, "oldHandlerOffset":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 575
    .local v10, "newHandlerOffset":Ljava/lang/Integer;
    if-eqz v10, :cond_7

    .line 576
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v2, v11, v4}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putShort(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 578
    :cond_7
    nop

    .end local v9    # "oldHandlerOffset":I
    .end local v10    # "newHandlerOffset":Ljava/lang/Integer;
    add-int/lit8 v4, v4, 0x8

    .line 571
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 581
    .end local v4    # "offset":I
    .end local v8    # "i":I
    :cond_8
    return-object v2
.end method

.method public replaceInstructions(Lorg/ow2/asmdex/instruction/Instruction;Lorg/ow2/asmdex/instruction/Instruction;)V
    .locals 4
    .param p1, "oldInsn"    # Lorg/ow2/asmdex/instruction/Instruction;
    .param p2, "newInsn"    # Lorg/ow2/asmdex/instruction/Instruction;

    .line 328
    iget-object v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 329
    .local v0, "indexInsnToReplace":I
    if-ltz v0, :cond_0

    .line 330
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 331
    iget-object v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->instructions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 334
    iget v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    invoke-virtual {p2}, Lorg/ow2/asmdex/instruction/Instruction;->getSize()I

    move-result v2

    invoke-virtual {p1}, Lorg/ow2/asmdex/instruction/Instruction;->getSize()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->size:I

    .line 336
    :cond_0
    return-void
.end method

.method public setDebugInfoItemOffset(Lorg/ow2/asmdex/lowLevelUtils/ByteVector;I)V
    .locals 1
    .param p1, "out"    # Lorg/ow2/asmdex/lowLevelUtils/ByteVector;
    .param p2, "debugInfoItemOffset"    # I

    .line 693
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->offset:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, p2, v0}, Lorg/ow2/asmdex/lowLevelUtils/ByteVector;->putInt(II)Lorg/ow2/asmdex/lowLevelUtils/ByteVector;

    .line 694
    return-void
.end method

.method public setFirstLineNumber(I)V
    .locals 1
    .param p1, "firstLineNumber"    # I

    .line 701
    iget v0, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->firstLineNumber:I

    if-nez v0, :cond_0

    .line 702
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->firstLineNumber:I

    .line 704
    :cond_0
    return-void
.end method

.method public setIncomingArgumentsSizeInWord(I)V
    .locals 0
    .param p1, "incomingArgumentsSizeInWord"    # I

    .line 643
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->incomingArgumentsSizeInWord:I

    .line 644
    return-void
.end method

.method public setMethod(Lorg/ow2/asmdex/structureWriter/Method;)V
    .locals 0
    .param p1, "method"    # Lorg/ow2/asmdex/structureWriter/Method;

    .line 684
    iput-object p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->method:Lorg/ow2/asmdex/structureWriter/Method;

    .line 685
    return-void
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 676
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->offset:I

    .line 677
    return-void
.end method

.method public setOutgoingArgumentsSizeInWord(I)V
    .locals 0
    .param p1, "outgoingArgumentsSizeInWord"    # I

    .line 659
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->outgoingArgumentsSizeInWord:I

    .line 660
    return-void
.end method

.method public setRegisterSize(I)V
    .locals 0
    .param p1, "registerSize"    # I

    .line 611
    iput p1, p0, Lorg/ow2/asmdex/structureWriter/CodeItem;->registerSize:I

    .line 612
    return-void
.end method
