.class public abstract Lorg/ow2/asmdex/tree/AbstractInsnNode;
.super Ljava/lang/Object;
.source "AbstractInsnNode.java"


# static fields
.field public static final ARRAY_LENGTH_INSN:I = 0xe

.field public static final ARRAY_OPERATION_INSN:I = 0xf

.field public static final FIELD_INSN:I = 0x5

.field public static final FILL_ARRAY_DATA_INSN:I = 0x10

.field public static final INSN:I = 0x0

.field public static final INT_INSN:I = 0x1

.field public static final JUMP_INSN:I = 0x7

.field public static final LABEL_INSN:I = 0x8

.field public static final LINE:I = 0x11

.field public static final LOOKUPSWITCH_INSN:I = 0xc

.field public static final METHOD_INSN:I = 0x6

.field public static final MULTIANEWARRAY_INSN:I = 0xd

.field public static final OPERATION_INSN:I = 0xa

.field public static final STRING_INSN:I = 0x9

.field public static final TABLESWITCH_INSN:I = 0xb

.field public static final TYPE_INSN:I = 0x4

.field public static final VAR_INSN:I = 0x2

.field public static final VAR_INSN_LONG:I = 0x3


# instance fields
.field index:I

.field next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

.field protected opcode:I

.field prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "opcode"    # I

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->opcode:I

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 169
    return-void
.end method

.method static clone(Lorg/ow2/asmdex/tree/LabelNode;Ljava/util/Map;)Lorg/ow2/asmdex/tree/LabelNode;
    .locals 1
    .param p0, "label"    # Lorg/ow2/asmdex/tree/LabelNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            "Ljava/util/Map<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;)",
            "Lorg/ow2/asmdex/tree/LabelNode;"
        }
    .end annotation

    .line 234
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ow2/asmdex/tree/LabelNode;

    return-object v0
.end method

.method static clone(Ljava/util/List;Ljava/util/Map;)[Lorg/ow2/asmdex/tree/LabelNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;)[",
            "Lorg/ow2/asmdex/tree/LabelNode;"
        }
    .end annotation

    .line 245
    .local p0, "labels":Ljava/util/List;, "Ljava/util/List<Lorg/ow2/asmdex/tree/LabelNode;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/ow2/asmdex/tree/LabelNode;Lorg/ow2/asmdex/tree/LabelNode;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/ow2/asmdex/tree/LabelNode;

    .line 246
    .local v0, "clones":[Lorg/ow2/asmdex/tree/LabelNode;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 247
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ow2/asmdex/tree/LabelNode;

    aput-object v2, v0, v1

    .line 246
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public abstract accept(Lorg/ow2/asmdex/MethodVisitor;)V
.end method

.method public abstract clone(Ljava/util/Map;)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            "Lorg/ow2/asmdex/tree/LabelNode;",
            ">;)",
            "Lorg/ow2/asmdex/tree/AbstractInsnNode;"
        }
    .end annotation
.end method

.method public getNext()Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .line 177
    iget v0, p0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->opcode:I

    return v0
.end method

.method public getPrevious()Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    return-object v0
.end method

.method public abstract getType()I
.end method
