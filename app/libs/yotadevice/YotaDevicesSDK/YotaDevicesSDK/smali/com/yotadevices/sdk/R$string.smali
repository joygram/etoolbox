.class public final Lcom/yotadevices/sdk/R$string;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "string"
.end annotation


# static fields
.field public static application_is_updated_on_bs:I

.field public static d_ago:I

.field public static flip_popup_default_description:I

.field public static flip_popup_default_title:I

.field public static loading_data:I

.field public static text_date:I

.field public static text_full:I

.field public static text_info:I

.field public static text_more:I

.field public static text_no_books:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    const/high16 v0, 0x70000

    sput v0, Lcom/yotadevices/sdk/R$string;->application_is_updated_on_bs:I

    .line 201
    const v0, 0x70004

    sput v0, Lcom/yotadevices/sdk/R$string;->d_ago:I

    .line 202
    const v0, 0x70003

    sput v0, Lcom/yotadevices/sdk/R$string;->flip_popup_default_description:I

    .line 203
    const v0, 0x70002

    sput v0, Lcom/yotadevices/sdk/R$string;->flip_popup_default_title:I

    .line 204
    const v0, 0x70001

    sput v0, Lcom/yotadevices/sdk/R$string;->loading_data:I

    .line 205
    const v0, 0x70008

    sput v0, Lcom/yotadevices/sdk/R$string;->text_date:I

    .line 206
    const v0, 0x70007

    sput v0, Lcom/yotadevices/sdk/R$string;->text_full:I

    .line 207
    const v0, 0x70005

    sput v0, Lcom/yotadevices/sdk/R$string;->text_info:I

    .line 208
    const v0, 0x70006

    sput v0, Lcom/yotadevices/sdk/R$string;->text_more:I

    .line 209
    const v0, 0x70009

    sput v0, Lcom/yotadevices/sdk/R$string;->text_no_books:I

    .line 199
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
