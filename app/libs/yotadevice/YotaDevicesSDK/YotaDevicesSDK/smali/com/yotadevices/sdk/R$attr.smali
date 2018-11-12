.class public final Lcom/yotadevices/sdk/R$attr;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "attr"
.end annotation


# static fields
.field public static animationGif:I

.field public static category:I

.field public static icon_frontscreen:I

.field public static invertable:I

.field public static size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/high16 v0, 0x10000

    sput v0, Lcom/yotadevices/sdk/R$attr;->animationGif:I

    .line 45
    const v0, 0x10002

    sput v0, Lcom/yotadevices/sdk/R$attr;->category:I

    .line 49
    const v0, 0x10003

    sput v0, Lcom/yotadevices/sdk/R$attr;->icon_frontscreen:I

    .line 57
    const v0, 0x10004

    sput v0, Lcom/yotadevices/sdk/R$attr;->invertable:I

    .line 73
    const v0, 0x10001

    sput v0, Lcom/yotadevices/sdk/R$attr;->size:I

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
