.class public Lcom/yotadevices/sdk/utils/DeviceInfo$Region;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/utils/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Region"
.end annotation


# static fields
.field public static final APAC:Ljava/lang/String; = "APC"

.field public static final CANADA:Ljava/lang/String; = "CAN"

.field public static final CHINA:Ljava/lang/String; = "CN1"

.field public static final EUROPE:Ljava/lang/String; = "EU1"

.field public static final FLIPKART:Ljava/lang/String; = "FK1"

.field public static final H3G_ITALY:Ljava/lang/String; = "HIT"

.field public static final HONGKONG:Ljava/lang/String; = "HK1"

.field public static final LATAM:Ljava/lang/String; = "LTM"

.field public static final MEA:Ljava/lang/String; = "ME1"

.field public static final RUSSIA:Ljava/lang/String; = "RU1"

.field public static final THAILAND:Ljava/lang/String; = "THA"

.field public static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"

.field public static final USA:Ljava/lang/String; = "US1"

.field public static final VODAFONE_ITALY:Ljava/lang/String; = "VIT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 39
    .local v0, "version":Ljava/lang/String;
    const-string/jumbo v1, "RU1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string/jumbo v1, "RU1"

    return-object v1

    .line 41
    :cond_0
    const-string/jumbo v1, "EU1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    const-string/jumbo v1, "EU1"

    return-object v1

    .line 43
    :cond_1
    const-string/jumbo v1, "ME1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const-string/jumbo v1, "ME1"

    return-object v1

    .line 45
    :cond_2
    const-string/jumbo v1, "FK1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    const-string/jumbo v1, "FK1"

    return-object v1

    .line 47
    :cond_3
    const-string/jumbo v1, "VIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 48
    const-string/jumbo v1, "VIT"

    return-object v1

    .line 49
    :cond_4
    const-string/jumbo v1, "HIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 50
    const-string/jumbo v1, "HIT"

    return-object v1

    .line 51
    :cond_5
    const-string/jumbo v1, "APC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 52
    const-string/jumbo v1, "APC"

    return-object v1

    .line 53
    :cond_6
    const-string/jumbo v1, "THA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 54
    const-string/jumbo v1, "THA"

    return-object v1

    .line 55
    :cond_7
    const-string/jumbo v1, "CN1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 56
    const-string/jumbo v1, "CN1"

    return-object v1

    .line 57
    :cond_8
    const-string/jumbo v1, "CAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 58
    const-string/jumbo v1, "CAN"

    return-object v1

    .line 59
    :cond_9
    const-string/jumbo v1, "US1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 60
    const-string/jumbo v1, "US1"

    return-object v1

    .line 61
    :cond_a
    const-string/jumbo v1, "LTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 62
    const-string/jumbo v1, "LTM"

    return-object v1

    .line 63
    :cond_b
    const-string/jumbo v1, "HK1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 64
    const-string/jumbo v1, "HK1"

    return-object v1

    .line 66
    :cond_c
    const-string/jumbo v1, "UNKNOWN"

    return-object v1
.end method
