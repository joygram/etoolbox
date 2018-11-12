.class public final Lcom/yotadevices/sdk/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dimen"
.end annotation


# static fields
.field public static navigation_panel_height:I

.field public static popup_flip_padding_side:I

.field public static popup_flip_padding_top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/high16 v0, 0x60000

    sput v0, Lcom/yotadevices/sdk/R$dimen;->navigation_panel_height:I

    .line 77
    const v0, 0x60002

    sput v0, Lcom/yotadevices/sdk/R$dimen;->popup_flip_padding_side:I

    .line 78
    const v0, 0x60001

    sput v0, Lcom/yotadevices/sdk/R$dimen;->popup_flip_padding_top:I

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
