.class final Lorg/nativescript/widgets/Utils$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Utils;->loadImageAsync(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILorg/nativescript/widgets/Utils$AsyncImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/nativescript/widgets/Utils$AsyncImageCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I

.field final synthetic val$options:Ljava/lang/String;

.field final synthetic val$src:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lorg/nativescript/widgets/Utils$AsyncImageCallback;Ljava/lang/String;II)V
    .locals 0

    .line 180
    iput-object p1, p0, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    iput-object p2, p0, Lorg/nativescript/widgets/Utils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lorg/nativescript/widgets/Utils$1;->val$callback:Lorg/nativescript/widgets/Utils$AsyncImageCallback;

    iput-object p4, p0, Lorg/nativescript/widgets/Utils$1;->val$options:Ljava/lang/String;

    iput p5, p0, Lorg/nativescript/widgets/Utils$1;->val$maxWidth:I

    iput p6, p0, Lorg/nativescript/widgets/Utils$1;->val$maxHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .line 183
    move-object/from16 v1, p0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v2, v0

    .line 184
    .local v2, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    const/4 v4, 0x0

    .line 189
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v0, v1, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    const-string v5, "content://"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, v1, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v6, v0

    .line 191
    .local v6, "uri":Landroid/net/Uri;
    iget-object v0, v1, Lorg/nativescript/widgets/Utils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v7, v0

    .line 193
    .local v7, "resolver":Landroid/content/ContentResolver;
    :try_start_1
    const-string v0, "r"

    invoke-virtual {v7, v6, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    .line 203
    nop

    .line 204
    :try_start_2
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 205
    nop

    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    goto :goto_0

    .line 194
    .restart local v6    # "uri":Landroid/net/Uri;
    .restart local v7    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {}, Lorg/nativescript/widgets/Utils;->access$000()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lorg/nativescript/widgets/Utils$1$1;

    invoke-direct {v5, v1, v0}, Lorg/nativescript/widgets/Utils$1$1;-><init>(Lorg/nativescript/widgets/Utils$1;Ljava/io/FileNotFoundException;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    invoke-static {v4}, Lorg/nativescript/widgets/Utils;->access$100(Landroid/os/ParcelFileDescriptor;)V

    .line 202
    return-void

    .line 206
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    iget-object v0, v1, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 209
    :goto_0
    new-instance v0, Lorg/nativescript/widgets/Utils$ImageAssetOptions;

    invoke-direct {v0}, Lorg/nativescript/widgets/Utils$ImageAssetOptions;-><init>()V

    move-object v6, v0

    .line 210
    .local v6, "opts":Lorg/nativescript/widgets/Utils$ImageAssetOptions;
    iput-boolean v3, v6, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->keepAspectRatio:Z

    .line 211
    iput-boolean v3, v6, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->autoScaleFactor:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 214
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    iget-object v7, v1, Lorg/nativescript/widgets/Utils$1;->val$options:Ljava/lang/String;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "object":Lorg/json/JSONObject;
    const-string v7, "width"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->width:I

    .line 216
    const-string v7, "height"

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->height:I

    .line 217
    const-string v7, "keepAspectRatio"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->keepAspectRatio:Z

    .line 218
    const-string v7, "autoScaleFactor"

    invoke-virtual {v0, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v6, Lorg/nativescript/widgets/Utils$ImageAssetOptions;->autoScaleFactor:Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 220
    .end local v0    # "object":Lorg/json/JSONObject;
    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    .line 223
    :goto_1
    :try_start_4
    new-instance v0, Landroid/util/Pair;

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .local v0, "sourceSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v7, Landroid/util/Pair;

    iget v8, v1, Lorg/nativescript/widgets/Utils$1;->val$maxWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v1, Lorg/nativescript/widgets/Utils$1;->val$maxHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .local v7, "maxSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v0, v7, v6}, Lorg/nativescript/widgets/Utils;->access$200(Landroid/util/Pair;Landroid/util/Pair;Lorg/nativescript/widgets/Utils$ImageAssetOptions;)Landroid/util/Pair;

    move-result-object v8

    .line 226
    .local v8, "requestedSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v9, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v9, v10, v11, v12}, Lorg/nativescript/widgets/image/Fetcher;->calculateInSampleSize(IIII)I

    move-result v9

    .line 227
    .local v9, "sampleSize":I
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 228
    .local v10, "finalBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iput v9, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 231
    const/4 v11, 0x0

    .line 235
    .local v11, "error":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 236
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-static {v12, v5, v10}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .local v5, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_2

    .line 238
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v5, v1, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    invoke-static {v5, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 242
    .restart local v5    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v5, :cond_5

    .line 243
    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v12, v13, :cond_2

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-eq v12, v13, :cond_3

    .line 245
    :cond_2
    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v13, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v5, v12, v13, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v5, v3

    .line 249
    :cond_3
    if-eqz v4, :cond_4

    .line 250
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-static {v3}, Lorg/nativescript/widgets/Utils;->access$300(Ljava/io/FileDescriptor;)I

    move-result v3

    .line 251
    .local v3, "rotationAngle":I
    invoke-static {v4}, Lorg/nativescript/widgets/Utils;->access$100(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_3

    .line 253
    .end local v3    # "rotationAngle":I
    :cond_4
    iget-object v3, v1, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    invoke-static {v3}, Lorg/nativescript/widgets/Utils;->access$400(Ljava/lang/String;)I

    move-result v3

    .line 256
    .restart local v3    # "rotationAngle":I
    :goto_3
    if-eqz v3, :cond_5

    .line 257
    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    move-object v15, v12

    .line 258
    .local v15, "matrix":Landroid/graphics/Matrix;
    int-to-float v12, v3

    invoke-virtual {v15, v12}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 259
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    const/16 v18, 0x1

    move-object v12, v5

    move-object/from16 v19, v15

    .end local v15    # "matrix":Landroid/graphics/Matrix;
    .local v19, "matrix":Landroid/graphics/Matrix;
    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    invoke-static/range {v12 .. v18}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v5, v12

    .line 262
    .end local v3    # "rotationAngle":I
    .end local v19    # "matrix":Landroid/graphics/Matrix;
    :cond_5
    if-nez v5, :cond_6

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Asset \'"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lorg/nativescript/widgets/Utils$1;->val$src:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\' cannot be found."

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    .line 266
    :cond_6
    move-object v3, v11

    .line 267
    .local v3, "finalError":Ljava/lang/String;
    move-object v12, v5

    .line 268
    .local v12, "finalBitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/nativescript/widgets/Utils;->access$000()Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lorg/nativescript/widgets/Utils$1$2;

    invoke-direct {v14, v1, v3, v12}, Lorg/nativescript/widgets/Utils$1$2;-><init>(Lorg/nativescript/widgets/Utils$1;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v13, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 285
    nop

    .end local v0    # "sourceSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3    # "finalError":Ljava/lang/String;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "opts":Lorg/nativescript/widgets/Utils$ImageAssetOptions;
    .end local v7    # "maxSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "requestedSize":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "sampleSize":I
    .end local v10    # "finalBitmapOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "error":Ljava/lang/String;
    .end local v12    # "finalBitmap":Landroid/graphics/Bitmap;
    goto :goto_4

    .line 278
    :catch_2
    move-exception v0

    .line 279
    .local v0, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/nativescript/widgets/Utils;->access$000()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/nativescript/widgets/Utils$1$3;

    invoke-direct {v4, v1, v0}, Lorg/nativescript/widgets/Utils$1$3;-><init>(Lorg/nativescript/widgets/Utils$1;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_4
    return-void
.end method
