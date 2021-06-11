.class Lorg/nativescript/widgets/Utils$1$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/nativescript/widgets/Utils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/nativescript/widgets/Utils$1;

.field final synthetic val$e:Ljava/io/FileNotFoundException;


# direct methods
.method constructor <init>(Lorg/nativescript/widgets/Utils$1;Ljava/io/FileNotFoundException;)V
    .locals 0
    .param p1, "this$0"    # Lorg/nativescript/widgets/Utils$1;

    .line 195
    iput-object p1, p0, Lorg/nativescript/widgets/Utils$1$1;->this$0:Lorg/nativescript/widgets/Utils$1;

    iput-object p2, p0, Lorg/nativescript/widgets/Utils$1$1;->val$e:Ljava/io/FileNotFoundException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 198
    iget-object v0, p0, Lorg/nativescript/widgets/Utils$1$1;->this$0:Lorg/nativescript/widgets/Utils$1;

    iget-object v0, v0, Lorg/nativescript/widgets/Utils$1;->val$callback:Lorg/nativescript/widgets/Utils$AsyncImageCallback;

    iget-object v1, p0, Lorg/nativescript/widgets/Utils$1$1;->val$e:Ljava/io/FileNotFoundException;

    invoke-interface {v0, v1}, Lorg/nativescript/widgets/Utils$AsyncImageCallback;->onError(Ljava/lang/Exception;)V

    .line 199
    return-void
.end method
