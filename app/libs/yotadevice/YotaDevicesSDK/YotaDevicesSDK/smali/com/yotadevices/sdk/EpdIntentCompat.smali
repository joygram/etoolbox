.class public final Lcom/yotadevices/sdk/EpdIntentCompat;
.super Ljava/lang/Object;
.source "EpdIntentCompat.java"


# static fields
.field public static final FLAG_ACTIVITY_KEEP_ON_EPD_SCREEN:I = 0x1

.field public static final FLAG_ACTIVITY_KEEP_ON_FRONT_SCREEN:I = 0x4

.field public static final FLAG_ACTIVITY_START_ON_EPD_SCREEN:I = 0x2

.field public static final FLAG_ACTIVITY_START_ON_FRONT_SCREEN:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEpdFlags(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addEpdFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getEpdFlags(Landroid/content/Intent;)I
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Intent;->getEpdFlags()I

    move-result v0

    return v0
.end method

.method public static setEpdFlags(Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "flags"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setEpdFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
