.class Lcom/tns/NativeScriptWeakHashMap$HashIterator;
.super Ljava/lang/Object;
.source "NativeScriptWeakHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tns/NativeScriptWeakHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TRET;>;"
    }
.end annotation


# instance fields
.field private currentEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private expectedModCount:I

.field private nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptWeakHashMap$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private position:I

.field final synthetic this$0:Lcom/tns/NativeScriptWeakHashMap;

.field final type:Lcom/tns/NativeScriptWeakHashMap$Entry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tns/NativeScriptWeakHashMap$Entry$Type<",
            "TRET;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/tns/NativeScriptWeakHashMap;Lcom/tns/NativeScriptWeakHashMap$Entry$Type;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tns/NativeScriptWeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tns/NativeScriptWeakHashMap$Entry$Type<",
            "TRET;TK;TV;>;)V"
        }
    .end annotation

    .line 129
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$HashIterator;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>.HashIterator<TRET;>;"
    .local p2, "type":Lcom/tns/NativeScriptWeakHashMap$Entry$Type;, "Lcom/tns/NativeScriptWeakHashMap$Entry$Type<TRET;TK;TV;>;"
    iput-object p1, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->position:I

    .line 130
    iput-object p2, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->type:Lcom/tns/NativeScriptWeakHashMap$Entry$Type;

    .line 131
    iget v0, p1, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->expectedModCount:I

    .line 132
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 135
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$HashIterator;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>.HashIterator<TRET;>;"
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    return v1

    .line 139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    if-nez v0, :cond_4

    .line 140
    :cond_2
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->position:I

    iget-object v2, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    iget-object v2, v2, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 141
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    iget-object v0, v0, Lcom/tns/NativeScriptWeakHashMap;->elementData:[Lcom/tns/NativeScriptWeakHashMap$Entry;

    iget v2, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->position:I

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    if-eqz v0, :cond_2

    .line 145
    :cond_3
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    if-nez v0, :cond_4

    .line 146
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    invoke-virtual {v0}, Lcom/tns/NativeScriptWeakHashMap$Entry;->get()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 151
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iget-boolean v0, v0, Lcom/tns/NativeScriptWeakHashMap$Entry;->isNull:Z

    if-eqz v0, :cond_5

    goto :goto_1

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iget-object v0, v0, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    goto :goto_0

    .line 152
    :cond_6
    :goto_1
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRET;"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$HashIterator;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>.HashIterator<TRET;>;"
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->expectedModCount:I

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    iget v1, v1, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    if-ne v0, v1, :cond_1

    .line 160
    invoke-virtual {p0}, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->currentEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 162
    iget-object v0, v0, Lcom/tns/NativeScriptWeakHashMap$Entry;->next:Lcom/tns/NativeScriptWeakHashMap$Entry;

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 163
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->type:Lcom/tns/NativeScriptWeakHashMap$Entry$Type;

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->currentEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    invoke-interface {v0, v1}, Lcom/tns/NativeScriptWeakHashMap$Entry$Type;->get(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, "result":Ljava/lang/Object;, "TRET;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->nextKey:Ljava/lang/Object;

    .line 166
    return-object v0

    .line 168
    .end local v0    # "result":Ljava/lang/Object;, "TRET;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 170
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 174
    .local p0, "this":Lcom/tns/NativeScriptWeakHashMap$HashIterator;, "Lcom/tns/NativeScriptWeakHashMap<TK;TV;>.HashIterator<TRET;>;"
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->expectedModCount:I

    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    iget v1, v1, Lcom/tns/NativeScriptWeakHashMap;->modCount:I

    if-ne v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->currentEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    if-eqz v0, :cond_0

    .line 176
    iget-object v1, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->this$0:Lcom/tns/NativeScriptWeakHashMap;

    invoke-virtual {v1, v0}, Lcom/tns/NativeScriptWeakHashMap;->removeEntry(Lcom/tns/NativeScriptWeakHashMap$Entry;)V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->currentEntry:Lcom/tns/NativeScriptWeakHashMap$Entry;

    .line 178
    iget v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tns/NativeScriptWeakHashMap$HashIterator;->expectedModCount:I

    .line 186
    return-void

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 184
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
