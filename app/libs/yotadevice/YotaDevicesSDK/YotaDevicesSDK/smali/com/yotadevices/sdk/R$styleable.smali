.class public final Lcom/yotadevices/sdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final BackscreenWidgetInfo:[I

.field public static BackscreenWidgetInfo_category:I

.field public static BackscreenWidgetInfo_icon_frontscreen:I

.field public static BackscreenWidgetInfo_invertable:I

.field public static BackscreenWidgetInfo_size:I

.field public static final GifView2:[I

.field public static GifView2_animationGif:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 229
    const v0, 0x2010001

    const v1, 0x2010002

    const v2, 0x2010003

    const v3, 0x2010004

    .line 228
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo:[I

    .line 263
    sput v5, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo_category:I

    .line 273
    const/4 v0, 0x2

    sput v0, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo_icon_frontscreen:I

    .line 287
    const/4 v0, 0x3

    sput v0, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo_invertable:I

    .line 309
    sput v4, Lcom/yotadevices/sdk/R$styleable;->BackscreenWidgetInfo_size:I

    .line 320
    new-array v0, v5, [I

    .line 321
    const/high16 v1, 0x2010000

    aput v1, v0, v4

    .line 320
    sput-object v0, Lcom/yotadevices/sdk/R$styleable;->GifView2:[I

    .line 335
    sput v4, Lcom/yotadevices/sdk/R$styleable;->GifView2_animationGif:I

    .line 211
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
