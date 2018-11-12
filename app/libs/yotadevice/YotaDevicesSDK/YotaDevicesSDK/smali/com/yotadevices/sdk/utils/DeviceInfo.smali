.class public final Lcom/yotadevices/sdk/utils/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/utils/DeviceInfo$Region;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocale()Ljava/util/Locale;
    .locals 4

    .prologue
    .line 75
    invoke-static {}, Lcom/yotadevices/sdk/utils/DeviceInfo$Region;->getRegion()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "region":Ljava/lang/String;
    const-string/jumbo v1, "RU1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "ru"

    const-string/jumbo v3, "RU"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v1, "EU1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    :cond_1
    sget-object v1, Ljava/util/Locale;->UK:Ljava/util/Locale;

    return-object v1

    .line 76
    :cond_2
    const-string/jumbo v1, "ME1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "FK1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "APC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "VIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    :cond_3
    sget-object v1, Ljava/util/Locale;->ITALIAN:Ljava/util/Locale;

    return-object v1

    .line 76
    :cond_4
    const-string/jumbo v1, "HIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "THA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 88
    new-instance v1, Ljava/util/Locale;

    const-string/jumbo v2, "th"

    const-string/jumbo v3, "TH"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 76
    :cond_5
    const-string/jumbo v1, "CN1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 90
    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    return-object v1

    .line 76
    :cond_6
    const-string/jumbo v1, "HK1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 92
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    return-object v1

    .line 76
    :cond_7
    const-string/jumbo v1, "CAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 97
    :cond_8
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-object v1

    .line 76
    :cond_9
    const-string/jumbo v1, "US1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "LTM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0
.end method
