.class public final Lcom/yotadevices/sdk/Epd;
.super Ljava/lang/Object;
.source "Epd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/Epd$Animation;,
        Lcom/yotadevices/sdk/Epd$Dithering;,
        Lcom/yotadevices/sdk/Epd$Gesture;,
        Lcom/yotadevices/sdk/Epd$UpdateType;
    }
.end annotation


# static fields
.field public static final DEVICE_COLOR_BLACK:I = 0x0

.field public static final DEVICE_COLOR_WHITE:I = 0xffffff

.field public static final DISPLAY_TYPE_EPD:I = 0x3e8

.field public static final MODE_ADAPTIVE_STANDARD_TIMEOUT:I = 0x190

.field public static final SC_DISPLAY_ID_EPD:I = 0x3

.field public static final SC_DISPLAY_ID_MAIN:I = 0x0

.field public static final UPDATE_MODE_ADAPTIVE:I = 0x2

.field public static final UPDATE_MODE_HIGH_QUALITY:I = 0x0

.field public static final UPDATE_MODE_HIGH_SPEED:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEpdContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 72
    if-nez p0, :cond_0

    return-object v3

    .line 73
    :cond_0
    const-string/jumbo v4, "display"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 74
    .local v2, "dm":Landroid/hardware/display/DisplayManager;
    const/4 v1, 0x0

    .line 75
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v5

    const/4 v4, 0x0

    array-length v6, v5

    .end local v1    # "display":Landroid/view/Display;
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    .line 76
    .local v0, "d":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getType()I

    move-result v7

    const/16 v8, 0x3e8

    if-ne v7, v8, :cond_1

    .line 77
    move-object v1, v0

    .line 75
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 80
    .end local v0    # "d":Landroid/view/Display;
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    :cond_3
    return-object v3
.end method

.method public static fullUpdate(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/yotadevices/sdk/Epd;->fullUpdate(Landroid/view/View;Z)V

    .line 487
    return-void
.end method

.method public static fullUpdate(Landroid/view/View;Z)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "now"    # Z

    .prologue
    .line 492
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 493
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "view must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 495
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 496
    .local v0, "rootView":Landroid/view/View;
    invoke-static {v0}, Lcom/yotadevices/sdk/Epd;->getViewDithering(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setSingleUpdateParameters(II)V

    .line 497
    if-eqz p1, :cond_2

    .line 498
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 491
    :cond_2
    return-void
.end method

.method public static fullUpdate(Landroid/widget/RemoteViews;I)V
    .locals 3
    .param p0, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I

    .prologue
    .line 503
    if-nez p0, :cond_0

    .line 504
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "remoteViews must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 507
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "rv_updateType"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v1, "setSingleUpdateParametersForRemoteView"

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 502
    return-void
.end method

.method public static getBuiltInDisplay(I)Landroid/os/IBinder;
    .locals 1
    .param p0, "builtInDisplayId"    # I

    .prologue
    .line 132
    invoke-static {p0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceColor()I
    .locals 3

    .prologue
    .line 374
    const-string/jumbo v1, "persist.sys.device_color"

    const-string/jumbo v2, "0x000000"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "0x"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static getDisplayType(Landroid/view/Display;)I
    .locals 2
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getType()I

    move-result v0

    return v0
.end method

.method public static getEpdUpdateParams(Landroid/view/View;)Lcom/yotadevices/sdk/EpdUpdateParams;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 244
    new-instance v0, Lcom/yotadevices/sdk/EpdUpdateParams;

    invoke-direct {v0}, Lcom/yotadevices/sdk/EpdUpdateParams;-><init>()V

    .line 245
    .local v0, "epdUpdateParams":Lcom/yotadevices/sdk/EpdUpdateParams;
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getEpdViewUpdateParams()Lcom/yotadevices/framework/EpdUpdateParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yotadevices/sdk/EpdUpdateParams;->setEpdParams(Lcom/yotadevices/framework/EpdUpdateParams;)V

    .line 246
    return-object v0
.end method

.method public static getViewDithering(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 199
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getEpdViewDithering()I

    move-result v0

    return v0
.end method

.method public static getViewUpdateType(Landroid/view/View;)I
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 145
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getEpdViewWaveformMode()I

    move-result v0

    return v0
.end method

.method public static isEpdContext(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    if-nez p0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->isEpdDisplayType()Z

    move-result v0

    return v0
.end method

.method public static isEpdDisplay(Landroid/view/Display;)Z
    .locals 2
    .param p0, "display"    # Landroid/view/Display;

    .prologue
    .line 103
    if-nez p0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Display must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/yotadevices/sdk/Epd;->getDisplayType(Landroid/view/Display;)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEpdNotificationSupported()Z
    .locals 2

    .prologue
    .line 515
    const-string/jumbo v0, "yeti.software.epd.notifications"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static performSingleUpdate(Landroid/view/View;I)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "updateType"    # I

    .prologue
    .line 404
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/yotadevices/sdk/Epd;->performSingleUpdate(Landroid/view/View;II)V

    .line 403
    return-void
.end method

.method public static performSingleUpdate(Landroid/view/View;II)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "updateType"    # I
    .param p2, "dithering"    # I

    .prologue
    .line 450
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yotadevices/sdk/Epd;->fullUpdate(Landroid/view/View;Z)V

    .line 449
    return-void
.end method

.method public static performSingleUpdate(Landroid/view/View;III)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "updateType"    # I
    .param p2, "dithering"    # I
    .param p3, "delay"    # I

    .prologue
    .line 424
    if-eqz p0, :cond_0

    .line 425
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/yotadevices/sdk/Epd$1;

    invoke-direct {v1, p0}, Lcom/yotadevices/sdk/Epd$1;-><init>(Landroid/view/View;)V

    .line 430
    int-to-long v2, p3

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 423
    :cond_0
    return-void
.end method

.method public static screenshot(Landroid/os/IBinder;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 299
    const/4 v0, 0x0

    return-object v0
.end method

.method public static screenshot(Landroid/os/IBinder;IIII)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "display"    # Landroid/os/IBinder;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "minLayer"    # I
    .param p4, "maxLayer"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setEpdUpdateParams(Landroid/view/View;Lcom/yotadevices/sdk/EpdUpdateParams;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "epdUpdateParams"    # Lcom/yotadevices/sdk/EpdUpdateParams;

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->getFrameworkEpdParams()Lcom/yotadevices/framework/EpdUpdateParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEpdViewUpdateParams(Lcom/yotadevices/framework/EpdUpdateParams;)V

    .line 231
    return-void
.end method

.method public static setRemoteViewsUpdateTypeAndDithering(Landroid/widget/RemoteViews;III)V
    .locals 2
    .param p0, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p1, "viewId"    # I
    .param p2, "updateType"    # I
    .param p3, "dithering"    # I

    .prologue
    .line 392
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 393
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "rv_updateType"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string/jumbo v1, "rv_dithering"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 395
    const-string/jumbo v1, "setSingleUpdateParametersForRemoteView"

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 391
    return-void
.end method

.method public static setTextViewCursorBlinking(Landroid/widget/TextView;Z)V
    .locals 0
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "shouldBlink"    # Z

    .prologue
    .line 308
    return-void
.end method

.method public static setUpdateMode(Landroid/view/View;I)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "updateMode"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 458
    if-nez p0, :cond_0

    .line 459
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "view must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 462
    .local v0, "rootView":Landroid/view/View;
    if-nez p1, :cond_2

    .line 463
    invoke-static {v0, v3}, Lcom/yotadevices/sdk/Epd;->setViewUpdateType(Landroid/view/View;I)V

    .line 464
    invoke-static {v0, v2}, Lcom/yotadevices/sdk/Epd;->setViewDithering(Landroid/view/View;I)V

    .line 457
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    if-ne p1, v1, :cond_3

    .line 466
    invoke-static {v0, v1}, Lcom/yotadevices/sdk/Epd;->setViewUpdateType(Landroid/view/View;I)V

    .line 467
    invoke-static {v0, v3}, Lcom/yotadevices/sdk/Epd;->setViewDithering(Landroid/view/View;I)V

    goto :goto_0

    .line 468
    :cond_3
    if-ne p1, v2, :cond_1

    .line 469
    const/16 v1, 0x190

    invoke-static {v0, v1}, Lcom/yotadevices/sdk/Epd;->setUpdateModeAdaptiveTimeout(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setUpdateModeAdaptiveTimeout(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "timeout"    # I

    .prologue
    .line 482
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/yotadevices/sdk/Epd;->getEpdUpdateParams(Landroid/view/View;)Lcom/yotadevices/sdk/EpdUpdateParams;

    move-result-object v0

    .line 483
    .local v0, "epdUpdateParams":Lcom/yotadevices/sdk/EpdUpdateParams;
    invoke-virtual {v0, p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->setUpdateModeAdaptiveTimeout(I)V

    .line 484
    invoke-static {p0, v0}, Lcom/yotadevices/sdk/Epd;->setEpdUpdateParams(Landroid/view/View;Lcom/yotadevices/sdk/EpdUpdateParams;)V

    .line 481
    return-void
.end method

.method public static setViewAnimation(Landroid/view/View;[I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "animation"    # [I

    .prologue
    .line 182
    if-nez p0, :cond_0

    .line 183
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "view must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/yotadevices/sdk/Epd;->getEpdUpdateParams(Landroid/view/View;)Lcom/yotadevices/sdk/EpdUpdateParams;

    move-result-object v0

    .line 186
    .local v0, "epdUpdateParams":Lcom/yotadevices/sdk/EpdUpdateParams;
    invoke-virtual {v0, p1}, Lcom/yotadevices/sdk/EpdUpdateParams;->setCustomAnimation([I)V

    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/yotadevices/sdk/Epd;->setEpdUpdateParams(Landroid/view/View;Lcom/yotadevices/sdk/EpdUpdateParams;)V

    .line 181
    return-void
.end method

.method public static setViewDithering(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dithering"    # I

    .prologue
    .line 217
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEpdViewDithering(I)V

    .line 216
    return-void
.end method

.method public static setViewUpdateType(Landroid/view/View;I)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "updateType"    # I

    .prologue
    .line 166
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "view must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 170
    const/4 p1, 0x3

    .line 172
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEpdViewWaveFormMode(I)V

    .line 165
    return-void
.end method
