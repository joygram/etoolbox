.class public Lcom/yotadevices/sdk/utils/RotationAlgorithm;
.super Ljava/lang/Object;
.source "RotationAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;
    }
.end annotation


# static fields
.field public static final OPTION_DONT_MONITOR_BACK_ROTATION:I = 0x10

.field public static final OPTION_EXPECT_FIRST_ROTATION_FOR_10MIN:I = 0x40

.field public static final OPTION_EXPECT_FIRST_ROTATION_FOR_60SEC:I = 0x20

.field public static final OPTION_EXPECT_ROTATION_INDEFINITE:I = 0x200

.field public static final OPTION_KEEP_SCREEN_OFF:I = 0x80

.field public static final OPTION_NO_POWER_ON:I = 0x100

.field public static final OPTION_NO_UNLOCK:I = 0x8

.field public static final OPTION_POWER_ON:I = 0x4

.field public static final OPTION_START_WITH_EPD:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

.field private mExpectFirstRotationFor10Min:Z

.field private mExpectFirstRotationFor60Sec:Z

.field private mExpectRotationIndefinite:Z

.field private mInstance:Lcom/yotadevices/sdk/utils/ScreenRotation;

.field private mKeepScreenOff:Z

.field private mListener:Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

.field private mNoPowerOn:Z

.field private mNoUnlock:Z

.field private mStartWithFS:Z

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static synthetic -get0(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mKeepScreenOff:Z

    return v0
.end method

.method static synthetic -get2(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;
    .locals 1

    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mListener:Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    return-object v0
.end method

.method static synthetic -get3(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mNoPowerOn:Z

    return v0
.end method

.method static synthetic -get4(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mNoUnlock:Z

    return v0
.end method

.method static synthetic -get5(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mStartWithFS:Z

    return v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mListener:Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mStartWithFS:Z

    .line 141
    iput-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mKeepScreenOff:Z

    .line 142
    iput-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mNoUnlock:Z

    .line 143
    iput-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectFirstRotationFor60Sec:Z

    .line 144
    iput-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectFirstRotationFor10Min:Z

    .line 145
    iput-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectRotationIndefinite:Z

    .line 146
    iput-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mNoPowerOn:Z

    .line 153
    iput-object p1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mContext:Landroid/content/Context;

    .line 154
    new-instance v0, Lcom/yotadevices/sdk/utils/ScreenRotation;

    invoke-direct {v0, p1}, Lcom/yotadevices/sdk/utils/ScreenRotation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mInstance:Lcom/yotadevices/sdk/utils/ScreenRotation;

    .line 156
    const-string/jumbo v0, "epd_keyguard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/yotadevices/keyguard/IEpdKeyguardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mEpdKeyguardManager:Lcom/yotadevices/keyguard/IEpdKeyguardManager;

    .line 152
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/yotadevices/sdk/utils/RotationAlgorithm;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    new-instance v0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;

    invoke-direct {v0, p0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private isOptionSet(II)Z
    .locals 2
    .param p1, "options"    # I
    .param p2, "flag"    # I

    .prologue
    const/4 v0, 0x0

    .line 200
    and-int v1, p1, p2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mInstance:Lcom/yotadevices/sdk/utils/ScreenRotation;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mInstance:Lcom/yotadevices/sdk/utils/ScreenRotation;

    invoke-virtual {v0}, Lcom/yotadevices/sdk/utils/ScreenRotation;->cancel()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mListener:Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mListener:Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    invoke-interface {v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;->onRotationCancelled()V

    .line 261
    :cond_1
    return-void
.end method

.method public cancelToast()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 274
    iput-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mToast:Landroid/widget/Toast;

    .line 271
    :cond_0
    return-void
.end method

.method public issueStandardToastAndVibration()V
    .locals 4

    .prologue
    .line 285
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 286
    sget v3, Lcom/yotadevices/sdk/R$string;->application_is_updated_on_bs:I

    .line 285
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 286
    const/4 v3, 0x0

    .line 285
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mToast:Landroid/widget/Toast;

    .line 287
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 288
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 290
    :try_start_0
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 291
    iget-object v2, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yotadevices/sdk/R$integer;->vibration_time:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    .line 290
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public turnScreenOffIfRotated()V
    .locals 4

    .prologue
    .line 208
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mInstance:Lcom/yotadevices/sdk/utils/ScreenRotation;

    if-nez v1, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    iget-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectRotationIndefinite:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 215
    .local v2, "time":J
    :goto_0
    new-instance v0, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;

    invoke-direct {v0, p0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm$1;-><init>(Lcom/yotadevices/sdk/utils/RotationAlgorithm;)V

    .line 258
    .local v0, "callback":Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;
    iget-object v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mInstance:Lcom/yotadevices/sdk/utils/ScreenRotation;

    invoke-virtual {v1, v0, v2, v3}, Lcom/yotadevices/sdk/utils/ScreenRotation;->listen(Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;J)V

    .line 207
    return-void

    .line 212
    .end local v0    # "callback":Lcom/yotadevices/sdk/utils/ScreenRotation$ScreenRotationCallback;
    .end local v2    # "time":J
    :cond_1
    iget-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectFirstRotationFor10Min:Z

    if-eqz v1, :cond_2

    .line 213
    const v1, 0x927c0

    .line 212
    :goto_1
    int-to-long v2, v1

    .restart local v2    # "time":J
    goto :goto_0

    .line 213
    .end local v2    # "time":J
    :cond_2
    iget-boolean v1, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectFirstRotationFor60Sec:Z

    if-eqz v1, :cond_3

    const v1, 0xea60

    goto :goto_1

    :cond_3
    const/16 v1, 0x1770

    goto :goto_1
.end method

.method public turnScreenOffIfRotated(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 188
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mStartWithFS:Z

    .line 189
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mKeepScreenOff:Z

    .line 190
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mNoUnlock:Z

    .line 191
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectFirstRotationFor60Sec:Z

    .line 192
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectFirstRotationFor10Min:Z

    .line 193
    const/16 v0, 0x200

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mExpectRotationIndefinite:Z

    .line 194
    const/16 v0, 0x100

    invoke-direct {p0, p1, v0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->isOptionSet(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mNoPowerOn:Z

    .line 196
    invoke-virtual {p0}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->turnScreenOffIfRotated()V

    .line 187
    return-void

    .line 188
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public turnScreenOffIfRotated(ILcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;)V
    .locals 0
    .param p1, "options"    # I
    .param p2, "listener"    # Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    .prologue
    .line 172
    iput-object p2, p0, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->mListener:Lcom/yotadevices/sdk/utils/RotationAlgorithm$OnPhoneRotatedListener;

    .line 173
    invoke-virtual {p0, p1}, Lcom/yotadevices/sdk/utils/RotationAlgorithm;->turnScreenOffIfRotated(I)V

    .line 171
    return-void
.end method
