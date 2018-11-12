.class public final Lcom/yotadevices/sdk/EpdConstants$Feature;
.super Ljava/lang/Object;
.source "EpdConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Feature"
.end annotation


# static fields
.field public static final FEATURE_API_LEVEL_5:Ljava/lang/String; = "com.yotadevices.feature.API_YD201_005"

.field public static final FEATURE_EPD_NOTIFICATIONS:Ljava/lang/String; = "yeti.software.epd.notifications"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEpdNotificationSupported()Z
    .locals 2

    .prologue
    .line 83
    const-string/jumbo v0, "yeti.software.epd.notifications"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
