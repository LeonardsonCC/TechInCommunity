.class Landroidx/fragment/app/FragmentStore;
.super Ljava/lang/Object;
.source "FragmentStore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mActive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/FragmentStateManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method addFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 66
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 70
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 73
    return-void

    .line 71
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method burpActive()V
    .locals 2

    .line 130
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 133
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroidx/fragment/app/FragmentStateManager;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 134
    return-void
.end method

.method containsActiveFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 246
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method dispatchStateChange(I)V
    .locals 4
    .param p1, "state"    # I

    .line 77
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 78
    .local v1, "f":Landroidx/fragment/app/Fragment;
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 79
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2, p1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 82
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 87
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_2

    .line 88
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentStateManager;->setFragmentManagerState(I)V

    .line 90
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :cond_2
    goto :goto_1

    .line 91
    :cond_3
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 317
    const-string v1, "Active Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 319
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    if-eqz v2, :cond_0

    .line 321
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 322
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {v3, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 324
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    goto :goto_1

    .line 325
    :cond_0
    const-string v3, "null"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_1
    goto :goto_0

    .line 330
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 331
    .local v1, "count":I
    if-lez v1, :cond_2

    .line 332
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Added Fragments:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_2

    .line 334
    iget-object v3, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 335
    .restart local v3    # "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    const-string v4, "  #"

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 338
    const-string v4, ": "

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 342
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2
    .param p1, "who"    # Ljava/lang/String;

    .line 269
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    .line 270
    .local v0, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    return-object v1

    .line 273
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p1, "id"    # I

    .line 202
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 203
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 204
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    .line 205
    return-object v1

    .line 202
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 210
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_2

    .line 211
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 212
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_2

    .line 213
    return-object v2

    .line 216
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    goto :goto_1

    .line 217
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 222
    if-eqz p1, :cond_1

    .line 224
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 225
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 226
    .local v1, "f":Landroidx/fragment/app/Fragment;
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    return-object v1

    .line 224
    .end local v1    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 231
    .end local v0    # "i":I
    :cond_1
    if-eqz p1, :cond_3

    .line 233
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 234
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_2

    .line 235
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 236
    .local v2, "f":Landroidx/fragment/app/Fragment;
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 237
    return-object v2

    .line 240
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    goto :goto_1

    .line 242
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4
    .param p1, "who"    # Ljava/lang/String;

    .line 256
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentStateManager;

    .line 257
    .local v1, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 259
    .local v2, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_0

    .line 260
    return-object v2

    .line 263
    .end local v1    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 7
    .param p1, "f"    # Landroidx/fragment/app/Fragment;

    .line 293
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 294
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 296
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    .line 300
    :cond_0
    iget-object v3, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 301
    .local v3, "fragmentIndex":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_2

    .line 302
    iget-object v5, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 303
    .local v5, "underFragment":Landroidx/fragment/app/Fragment;
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_1

    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 305
    return-object v5

    .line 301
    .end local v5    # "underFragment":Landroidx/fragment/app/Fragment;
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 308
    .end local v4    # "i":I
    :cond_2
    return-object v2

    .line 297
    .end local v3    # "fragmentIndex":I
    :cond_3
    :goto_1
    return-object v2
.end method

.method getActiveFragmentCount()I
    .locals 1

    .line 196
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method getActiveFragments()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v0, "activeFragments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/Fragment;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 186
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 189
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    :goto_1
    goto :goto_0

    .line 192
    :cond_1
    return-object v0
.end method

.method getFragmentStateManager(Ljava/lang/String;)Landroidx/fragment/app/FragmentStateManager;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 251
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentStateManager;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 177
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 178
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method makeActive(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 2
    .param p1, "newlyActive"    # Landroidx/fragment/app/FragmentStateManager;

    .line 62
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method makeInactive(Landroidx/fragment/app/FragmentStateManager;)V
    .locals 7
    .param p1, "newlyInactive"    # Landroidx/fragment/app/FragmentStateManager;

    .line 101
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 104
    .local v0, "f":Landroidx/fragment/app/Fragment;
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 105
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v4

    .line 107
    .local v4, "fragment":Landroidx/fragment/app/Fragment;
    iget-object v5, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v6, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 108
    iput-object v0, v4, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 109
    iput-object v3, v4, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 112
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v4    # "fragment":Landroidx/fragment/app/Fragment;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 120
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 122
    :cond_2
    return-void
.end method

.method removeFragment(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 94
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 95
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 98
    return-void

    .line 96
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method resetActiveFragments()V
    .locals 1

    .line 42
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 43
    return-void
.end method

.method restoreAddedFragments(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "added":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    if-eqz p1, :cond_2

    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 49
    .local v1, "who":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentStore;->findActiveFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 50
    .local v2, "f":Landroidx/fragment/app/Fragment;
    if-eqz v2, :cond_1

    .line 53
    const/4 v3, 0x2

    invoke-static {v3}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreSaveState: added ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentStore;->addFragment(Landroidx/fragment/app/Fragment;)V

    .line 57
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    goto :goto_0

    .line 51
    .restart local v1    # "who":Ljava/lang/String;
    .restart local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No instantiated fragment for ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    .end local v1    # "who":Ljava/lang/String;
    .end local v2    # "f":Landroidx/fragment/app/Fragment;
    :cond_2
    return-void
.end method

.method saveActiveFragments()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentState;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/fragment/app/FragmentState;>;"
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentStateManager;

    .line 140
    .local v2, "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 143
    .local v3, "f":Landroidx/fragment/app/Fragment;
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentStateManager;->saveState()Landroidx/fragment/app/FragmentState;

    move-result-object v4

    .line 144
    .local v4, "fs":Landroidx/fragment/app/FragmentState;
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    const/4 v5, 0x2

    invoke-static {v5}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved state of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v2    # "fragmentStateManager":Landroidx/fragment/app/FragmentStateManager;
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    .end local v4    # "fs":Landroidx/fragment/app/FragmentState;
    :cond_0
    goto :goto_0

    .line 151
    :cond_1
    return-object v0
.end method

.method saveAddedFragments()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 160
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    .local v1, "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Landroidx/fragment/app/FragmentStore;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    .line 162
    .local v3, "f":Landroidx/fragment/app/Fragment;
    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    const/4 v4, 0x2

    invoke-static {v4}, Landroidx/fragment/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 164
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding fragment ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v3    # "f":Landroidx/fragment/app/Fragment;
    :cond_1
    goto :goto_0

    .line 168
    :cond_2
    monitor-exit v0

    return-object v1

    .line 169
    .end local v1    # "added":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
