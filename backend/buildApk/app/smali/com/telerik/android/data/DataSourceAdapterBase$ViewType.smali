.class public final enum Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;
.super Ljava/lang/Enum;
.source "DataSourceAdapterBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/telerik/android/data/DataSourceAdapterBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

.field public static final enum FLAT:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

.field public static final enum HIERARCHY:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 122
    new-instance v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    const/4 v1, 0x0

    const-string v2, "FLAT"

    invoke-direct {v0, v2, v1}, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->FLAT:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    .line 123
    new-instance v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    const/4 v2, 0x1

    const-string v3, "HIERARCHY"

    invoke-direct {v0, v3, v2}, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->HIERARCHY:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    .line 121
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    sget-object v4, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->FLAT:Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->$VALUES:[Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 121
    const-class v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;
    .locals 1

    .line 121
    sget-object v0, Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->$VALUES:[Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    invoke-virtual {v0}, [Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/telerik/android/data/DataSourceAdapterBase$ViewType;

    return-object v0
.end method
