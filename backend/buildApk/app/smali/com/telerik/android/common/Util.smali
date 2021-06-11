.class public Lcom/telerik/android/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final BELOW_LINE_CHARS:Ljava/lang/String; = "qypgj\u0443\u0449\u0444\u0434\u0446\u0440"

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v1, 0x1388

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/telerik/android/common/Util;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .line 46
    if-ne p0, p1, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 54
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static RectFToRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 5
    .param p0, "rect"    # Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static convertToRectF(Lcom/telerik/android/common/math/RadRect;)Landroid/graphics/RectF;
    .locals 6
    .param p0, "rect"    # Lcom/telerik/android/common/math/RadRect;

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getX()D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getY()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getRight()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {p0}, Lcom/telerik/android/common/math/RadRect;->getBottom()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public static createViewFromXML(ILjava/lang/Class;Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "layoutId"    # I
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 204
    .local p1, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p2, :cond_1

    .line 208
    if-eqz p1, :cond_0

    .line 212
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 215
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "ex":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/telerik/android/common/exceptions/WrongLayoutPartTypeException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Layout root is of the wrong type. It should be of type %s."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/telerik/android/common/exceptions/WrongLayoutPartTypeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resultType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generateDummyText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 231
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 232
    .local v3, "ch":Ljava/lang/Character;
    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 235
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "qypgj\u0443\u0449\u0444\u0434\u0446\u0440"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    const/16 v4, 0x61

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 238
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 233
    :cond_2
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .end local v3    # "ch":Ljava/lang/Character;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateViewId()I
    .locals 3

    .line 35
    :goto_0
    sget-object v0, Lcom/telerik/android/common/Util;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 37
    .local v0, "result":I
    add-int/lit8 v1, v0, 0x1

    .line 38
    .local v1, "newValue":I
    const v2, 0xffffff

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    .line 39
    :cond_0
    sget-object v2, Lcom/telerik/android/common/Util;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    return v0

    .line 42
    .end local v0    # "result":I
    .end local v1    # "newValue":I
    :cond_1
    goto :goto_0
.end method

.method public static getDP(F)I
    .locals 1
    .param p0, "dp"    # F

    .line 87
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/telerik/android/common/Util;->getDimen(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static getDimen(IF)F
    .locals 1
    .param p0, "type"    # I
    .param p1, "dimen"    # F

    .line 83
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method public static getLayoutPart(Landroid/app/Activity;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "partId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 161
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/telerik/android/common/Util;->getLayoutPart(Landroid/app/Activity;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutPart(Landroid/app/Activity;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 7
    .param p0, "parent"    # Landroid/app/Activity;
    .param p1, "partId"    # I
    .param p3, "throwException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 177
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "resourceName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    new-instance v4, Lcom/telerik/android/common/exceptions/MissingLayoutPartException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v2, "Layout part with id %s is missing from the specified layout."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/telerik/android/common/exceptions/MissingLayoutPartException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .local v2, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 191
    return-object v2

    .line 188
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 189
    .local v4, "ex":Ljava/lang/ClassCastException;
    new-instance v5, Lcom/telerik/android/common/exceptions/WrongLayoutPartTypeException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const-string v2, "Layout part with id %s is of the wrong type. It should be of type %s."

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/telerik/android/common/exceptions/WrongLayoutPartTypeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getLayoutPart(Landroid/view/View;ILjava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "partId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 118
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/telerik/android/common/Util;->getLayoutPart(Landroid/view/View;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getLayoutPart(Landroid/view/View;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 7
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "partId"    # I
    .param p3, "throwException"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 134
    .local p2, "resultType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "resourceName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    new-instance v4, Lcom/telerik/android/common/exceptions/MissingLayoutPartException;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    const-string v2, "Layout part with id %s is missing from the specified layout."

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/telerik/android/common/exceptions/MissingLayoutPartException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .local v2, "result":Ljava/lang/Object;, "TT;"
    nop

    .line 148
    return-object v2

    .line 145
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 146
    .local v4, "ex":Ljava/lang/ClassCastException;
    new-instance v5, Lcom/telerik/android/common/exceptions/WrongLayoutPartTypeException;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const-string v2, "Layout part with id %s is of the wrong type. It should be of type %s."

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/telerik/android/common/exceptions/WrongLayoutPartTypeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getSP(F)I
    .locals 1
    .param p0, "sp"    # F

    .line 96
    const/4 v0, 0x2

    invoke-static {v0, p0}, Lcom/telerik/android/common/Util;->getDimen(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "value"    # Ljava/lang/String;

    .line 28
    if-eqz p0, :cond_1

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .line 58
    if-nez p0, :cond_0

    .line 59
    const-string v0, ""

    return-object v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
