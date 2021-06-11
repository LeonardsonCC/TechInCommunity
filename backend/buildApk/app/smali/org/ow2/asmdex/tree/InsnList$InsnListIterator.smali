.class final Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;
.super Ljava/lang/Object;
.source "InsnList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ow2/asmdex/tree/InsnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InsnListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Lorg/ow2/asmdex/tree/AbstractInsnNode;",
        ">;"
    }
.end annotation


# instance fields
.field next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

.field prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

.field final synthetic this$0:Lorg/ow2/asmdex/tree/InsnList;


# direct methods
.method constructor <init>(Lorg/ow2/asmdex/tree/InsnList;I)V
    .locals 1
    .param p2, "index"    # I

    .line 582
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    invoke-virtual {p1}, Lorg/ow2/asmdex/tree/InsnList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 584
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 585
    invoke-virtual {p1}, Lorg/ow2/asmdex/tree/InsnList;->getLast()Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {p1, p2}, Lorg/ow2/asmdex/tree/InsnList;->get(I)Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 588
    iget-object p1, p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 590
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 578
    check-cast p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    return-void
.end method

.method public add(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "o"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 651
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    invoke-virtual {v0, v1, p1}, Lorg/ow2/asmdex/tree/InsnList;->insertBefore(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 652
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 653
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 594
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 616
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next()Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 2

    .line 599
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 603
    .local v0, "result":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 604
    iget-object v1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 605
    return-object v0

    .line 600
    .end local v0    # "result":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 629
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    invoke-virtual {v0}, Lorg/ow2/asmdex/tree/InsnList;->size()I

    move-result v0

    return v0

    .line 632
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    iget-object v0, v0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    invoke-virtual {v0}, Lorg/ow2/asmdex/tree/InsnList;->toArray()[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 635
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iget v0, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 578
    invoke-virtual {p0}, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->previous()Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object v0

    return-object v0
.end method

.method public previous()Lorg/ow2/asmdex/tree/AbstractInsnNode;
    .locals 2

    .line 621
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 622
    .local v0, "result":Lorg/ow2/asmdex/tree/AbstractInsnNode;
    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 623
    iget-object v1, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 624
    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .line 640
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 641
    const/4 v0, -0x1

    return v0

    .line 643
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    iget-object v0, v0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 644
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    invoke-virtual {v0}, Lorg/ow2/asmdex/tree/InsnList;->toArray()[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/ow2/asmdex/tree/InsnList;->cache:[Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 646
    :cond_1
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iget v0, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public remove()V
    .locals 2

    .line 610
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/tree/InsnList;->remove(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 611
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 612
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 578
    check-cast p1, Lorg/ow2/asmdex/tree/AbstractInsnNode;

    invoke-virtual {p0, p1}, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->set(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    return-void
.end method

.method public set(Lorg/ow2/asmdex/tree/AbstractInsnNode;)V
    .locals 2
    .param p1, "o"    # Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 657
    iget-object v0, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->this$0:Lorg/ow2/asmdex/tree/InsnList;

    iget-object v1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->next:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    iget-object v1, v1, Lorg/ow2/asmdex/tree/AbstractInsnNode;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    invoke-virtual {v0, v1, p1}, Lorg/ow2/asmdex/tree/InsnList;->set(Lorg/ow2/asmdex/tree/AbstractInsnNode;Lorg/ow2/asmdex/tree/AbstractInsnNode;)V

    .line 658
    iput-object p1, p0, Lorg/ow2/asmdex/tree/InsnList$InsnListIterator;->prev:Lorg/ow2/asmdex/tree/AbstractInsnNode;

    .line 659
    return-void
.end method
