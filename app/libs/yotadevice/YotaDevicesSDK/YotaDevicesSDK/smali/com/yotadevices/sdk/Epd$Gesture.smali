.class public final Lcom/yotadevices/sdk/Epd$Gesture;
.super Ljava/lang/Object;
.source "Epd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/Epd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gesture"
.end annotation


# static fields
.field public static final EPD_DEEPSLEEP:I = 0x40

.field public static final EPD_GESTURE_LOCK_3FINGER:I = 0x8

.field public static final EPD_GESTURE_UNLOCK_SWIPE:I = 0x10

.field public static final EPD_GESTURE_UNLOCK_TAPTAP:I = 0x20

.field public static final EPD_GESTURE_UNLOCK_TAPTAP_TOUCHDOWN:I = 0x80

.field public static final FRONT_GESTURE_LOCK_3FINGER:I = 0x1

.field public static final FRONT_GESTURE_UNLOCK_SWIPE:I = 0x2

.field public static final FRONT_GESTURE_UNLOCK_TAPTAP:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
