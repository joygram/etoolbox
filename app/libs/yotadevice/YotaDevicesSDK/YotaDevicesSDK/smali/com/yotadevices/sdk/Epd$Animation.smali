.class public Lcom/yotadevices/sdk/Epd$Animation;
.super Ljava/lang/Object;
.source "Epd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/Epd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Animation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimationHorizontalClose(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 339
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationHorizontalClose(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationHorizontalLeft(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 343
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationHorizontalLeft(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationHorizontalOpen(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 335
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationHorizontalOpen(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationHorizontalRight(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 347
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationHorizontalRight(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationVerticalBottom(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationVerticalBottom(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationVerticalClose(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 363
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationVerticalClose(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationVerticalOpen(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationVerticalOpen(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method

.method public static getAnimationVerticalTop(Landroid/content/Context;)[I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 355
    invoke-static {p0}, Lcom/yotadevices/framework/EpdAnimation;->getAnimationVerticalTop(Landroid/content/Context;)[I

    move-result-object v0

    return-object v0
.end method
