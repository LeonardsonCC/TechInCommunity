.class public Lorg/ow2/asmdex/tree/InsnList;
.super Ljava/lang/Object;
.source "InsnList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;
    }
.end annotation


# static fields
.field private static check:Z


# instance fields
.field cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

.field private first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

.field private last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private removeAll(Z)V
    .locals 4
    .param p1, "mark"    # Z

    .line 540
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 541
    iget-object v1, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 542
    .local v1, "insn":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 543
    iget-object v2, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 544
    .local v2, "next":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    const/4 v3, -0x1

    iput v3, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 545
    iput-object v0, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 546
    iput-object v0, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 547
    move-object v1, v2

    .line 548
    .end local v2    # "next":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    goto :goto_0

    .line 550
    .end local v1    # "insn":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 551
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 552
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 553
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 554
    return-void
.end method

.method public static setCheck(Z)V
    .locals 0
    .param p0, "check"    # Z

    .line 83
    sput-boolean p0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    .line 84
    return-void
.end method


# virtual methods
.method public accept(Lorg/ow2/asmdex/MethodVisitor;)V
    .locals 1
    .param p1, "mv"    # Lorg/ow2/asmdex/MethodVisitor;

    .line 182
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 183
    .local v0, "insn":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Lorg/ow2/asmdex/tree/AbstractInsnNode;->accept(Lorg/ow2/asmdex/MethodVisitor;)V

    .line 185
    iget-object v0, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 273
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 276
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 277
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_2

    .line 278
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 279
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 281
    :cond_2
    iput-object p1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 282
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 284
    :goto_1
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 286
    const/4 v0, 0x0

    iput v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 287
    return-void
.end method

.method public add(Lorg/ow2/asmdex/tree/InsnList;)V
    .locals 2
    .param p1, "insns"    # Lorg/ow2/asmdex/tree/InsnList;

    .line 297
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 300
    :cond_1
    :goto_0
    iget v0, p1, Lorg/ow2/asmdex/tree/InsnList;->size:I

    if-nez v0, :cond_2

    .line 301
    return-void

    .line 303
    :cond_2
    iget v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 304
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_3

    .line 305
    iget-object v0, p1, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 306
    iget-object v0, p1, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 308
    :cond_3
    iget-object v1, p1, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 309
    .local v1, "elem":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iput-object v1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 310
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 311
    iget-object v0, p1, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 313
    .end local v1    # "elem":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 314
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/ow2/asmdex/tree/InsnList;->removeAll(Z)V

    .line 315
    return-void
.end method

.method public clear()V
    .locals 1

    .line 560
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    invoke-direct {p0, v0}, Lorg/ow2/asmdex/tree/InsnList;->removeAll(Z)V

    .line 561
    return-void
.end method

.method public contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z
    .locals 2
    .param p1, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 144
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 145
    .local v0, "i":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 146
    iget-object v0, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_0

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public get(I)Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 1
    .param p1, "index"    # I

    .line 126
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    if-ge p1, v0, :cond_1

    .line 129
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lorg/ow2/asmdex/tree/InsnList;->toArray()[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    aget-object v0, v0, p1

    return-object v0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getFirst()Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLast()Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    return-object v0
.end method

.method public indexOf(Lorg/ow2/asmdex/tree/AbstractInsnNode;)I
    .locals 1
    .param p1, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 167
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 168
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 170
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_2

    .line 171
    invoke-virtual {p0}, Lorg/ow2/asmdex/tree/InsnList;->toArray()[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 173
    :cond_2
    iget v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public insert(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 326
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 327
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 329
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 330
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_2

    .line 331
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 332
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 334
    :cond_2
    iput-object p1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 335
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 337
    :goto_1
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 338
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 339
    const/4 v0, 0x0

    iput v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 340
    return-void
.end method

.method public insert(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "location"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 382
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 385
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 386
    iget-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 387
    .local v0, "next":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    if-nez v0, :cond_2

    .line 388
    iput-object p2, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 390
    :cond_2
    iput-object p2, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 392
    :goto_1
    iput-object p2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 393
    iput-object v0, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 394
    iput-object p1, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 395
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 396
    const/4 v1, 0x0

    iput v1, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 397
    return-void
.end method

.method public insert(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/InsnList;)V
    .locals 4
    .param p1, "location"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .param p2, "insns"    # Lorg/ow2/asmdex/tree/InsnList;

    .line 410
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 413
    :cond_1
    :goto_0
    iget v0, p2, Lorg/ow2/asmdex/tree/InsnList;->size:I

    if-nez v0, :cond_2

    .line 414
    return-void

    .line 416
    :cond_2
    iget v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 417
    iget-object v0, p2, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 418
    .local v0, "ifirst":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iget-object v1, p2, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 419
    .local v1, "ilast":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iget-object v2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 420
    .local v2, "next":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    if-nez v2, :cond_3

    .line 421
    iput-object v1, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 423
    :cond_3
    iput-object v1, v2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 425
    :goto_1
    iput-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 426
    iput-object v2, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 427
    iput-object p1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 428
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 429
    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lorg/ow2/asmdex/tree/InsnList;->removeAll(Z)V

    .line 430
    return-void
.end method

.method public insert(Lorg/ow2/asmdex/tree/InsnList;)V
    .locals 2
    .param p1, "insns"    # Lorg/ow2/asmdex/tree/InsnList;

    .line 350
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    if-eq p1, p0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 353
    :cond_1
    :goto_0
    iget v0, p1, Lorg/ow2/asmdex/tree/InsnList;->size:I

    if-nez v0, :cond_2

    .line 354
    return-void

    .line 356
    :cond_2
    iget v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 357
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_3

    .line 358
    iget-object v0, p1, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 359
    iget-object v0, p1, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 361
    :cond_3
    iget-object v1, p1, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 362
    .local v1, "elem":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iput-object v1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 363
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 364
    iget-object v0, p1, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 366
    .end local v1    # "elem":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 367
    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lorg/ow2/asmdex/tree/InsnList;->removeAll(Z)V

    .line 368
    return-void
.end method

.method public insertBefore(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "location"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 444
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 447
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 448
    iget-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 449
    .local v0, "prev":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    if-nez v0, :cond_2

    .line 450
    iput-object p2, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 452
    :cond_2
    iput-object p2, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 454
    :goto_1
    iput-object p2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 455
    iput-object p1, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 456
    iput-object v0, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 457
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 458
    const/4 v1, 0x0

    iput v1, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 459
    return-void
.end method

.method public insertBefore(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/InsnList;)V
    .locals 4
    .param p1, "location"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .param p2, "insns"    # Lorg/ow2/asmdex/tree/InsnList;

    .line 472
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq p2, p0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 475
    :cond_1
    :goto_0
    iget v0, p2, Lorg/ow2/asmdex/tree/InsnList;->size:I

    if-nez v0, :cond_2

    .line 476
    return-void

    .line 478
    :cond_2
    iget v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 479
    iget-object v0, p2, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 480
    .local v0, "ifirst":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iget-object v1, p2, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 481
    .local v1, "ilast":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iget-object v2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 482
    .local v2, "prev":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    if-nez v2, :cond_3

    .line 483
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 485
    :cond_3
    iput-object v0, v2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 487
    :goto_1
    iput-object v1, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 488
    iput-object p1, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 489
    iput-object v2, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 490
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 491
    const/4 v3, 0x0

    invoke-direct {p2, v3}, Lorg/ow2/asmdex/tree/InsnList;->removeAll(Z)V

    .line 492
    return-void
.end method

.method public iterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/ow2/asmdex/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/ow2/asmdex/tree/InsnList;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/ow2/asmdex/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 204
    new-instance v0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;

    invoke-direct {v0, p0, p1}, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;-><init>(Lorg/ow2/asmdex/tree/InsnList;I)V

    return-object v0
.end method

.method public remove(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 4
    .param p1, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 504
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 507
    :cond_1
    :goto_0
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    .line 508
    iget-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 509
    .local v0, "next":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iget-object v1, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 510
    .local v1, "prev":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 511
    if-nez v1, :cond_2

    .line 512
    iput-object v2, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 513
    iput-object v2, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 515
    :cond_2
    iput-object v2, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 516
    iput-object v1, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 519
    :cond_3
    if-nez v1, :cond_4

    .line 520
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 521
    iput-object v2, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 523
    :cond_4
    iput-object v0, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 524
    iput-object v1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 527
    :goto_1
    iput-object v2, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 528
    const/4 v3, -0x1

    iput v3, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 529
    iput-object v2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 530
    iput-object v2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 531
    return-void
.end method

.method public resetLabels()V
    .locals 2

    .line 569
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 570
    .local v0, "insn":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_0
    if-eqz v0, :cond_1

    .line 571
    instance-of v1, v0, Lorg/ow2/asmdex/tree/LabelNode;

    if-eqz v1, :cond_0

    .line 572
    move-object v1, v0

    check-cast v1, Lorg/ow2/asmdex/tree/LabelNode;

    invoke-virtual {v1}, Lorg/ow2/asmdex/tree/LabelNode;->resetLabel()V

    .line 574
    :cond_0
    iget-object v0, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_0

    .line 576
    :cond_1
    return-void
.end method

.method public set(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 5
    .param p1, "location"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .param p2, "insn"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 235
    sget-boolean v0, Lorg/ow2/asmdex/tree/InsnList;->check:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList;->contains(Lorg/ow2/asmdex/tree/AbstractInsnNode;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 238
    :cond_1
    :goto_0
    iget-object v0, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 239
    .local v0, "next":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iput-object v0, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 240
    if-eqz v0, :cond_2

    .line 241
    iput-object p2, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_1

    .line 243
    :cond_2
    iput-object p2, p0, Lorg/ow2/asmdex/tree/InsnList;->last:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 245
    :goto_1
    iget-object v2, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 246
    .local v2, "prev":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iput-object v2, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 247
    if-eqz v2, :cond_3

    .line 248
    iput-object p2, v2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_2

    .line 250
    :cond_3
    iput-object p2, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 252
    :goto_2
    iget-object v3, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-eqz v3, :cond_4

    .line 253
    iget v3, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 254
    .local v3, "index":I
    iget-object v4, p0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    aput-object p2, v4, v3

    .line 255
    iput v3, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 256
    .end local v3    # "index":I
    goto :goto_3

    .line 257
    :cond_4
    const/4 v3, 0x0

    iput v3, p2, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 259
    :goto_3
    iput v1, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 260
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 261
    iput-object v1, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 262
    return-void
.end method

.method public size()I
    .locals 1

    .line 92
    iget v0, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    return v0
.end method

.method public toArray()[Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 4

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "i":I
    iget-object v1, p0, Lorg/ow2/asmdex/tree/InsnList;->first:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 215
    .local v1, "elem":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iget v2, p0, Lorg/ow2/asmdex/tree/InsnList;->size:I

    new-array v2, v2, [Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 216
    .local v2, "insns":[Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :goto_0
    if-eqz v1, :cond_0

    .line 217
    aput-object v1, v2, v0

    .line 218
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    iput v0, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    .line 219
    iget-object v1, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move v0, v3

    goto :goto_0

    .line 221
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    return-object v2
.end method
