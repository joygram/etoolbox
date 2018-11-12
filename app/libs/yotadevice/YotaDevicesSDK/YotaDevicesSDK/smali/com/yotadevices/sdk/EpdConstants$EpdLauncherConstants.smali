.class public Lcom/yotadevices/sdk/EpdConstants$EpdLauncherConstants;
.super Ljava/lang/Object;
.source "EpdConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yotadevices/sdk/EpdConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EpdLauncherConstants"
.end annotation


# static fields
.field public static final ACTION_APPWIDGET_EXTRA_DESCRIPTION:Ljava/lang/String; = "com.yotadevices.intent.extra.NOTIFICATION_DESCRIPTION"

.field public static final ACTION_APPWIDGET_EXTRA_INVISIBLE:Ljava/lang/String; = "com.yotadevices.intent.extra.INVISIBLE"

.field public static final ACTION_APPWIDGET_EXTRA_VISIBLE:Ljava/lang/String; = "com.yotadevices.intent.extra.VISIBLE"

.field public static final ACTION_APPWIDGET_EXTRA_WIDGET_ID:Ljava/lang/String; = "com.yotadevices.intent.extra.WIDGET_ID"

.field public static final ACTION_APPWIDGET_NOTIFICATION:Ljava/lang/String; = "com.yotadevices.intent.action.APPWIDGET_NOTIFICATION"

.field public static final ACTION_APPWIDGET_SWIPE_DOWN:Ljava/lang/String; = "com.yotadevices.action.SWIPE_DOWN"

.field public static final ACTION_APPWIDGET_SWIPE_UP:Ljava/lang/String; = "com.yotadevices.action.SWIPE_UP"

.field public static final ACTION_APPWIDGET_VISIBILITY_CHANGED:Ljava/lang/String; = "com.yotadevices.intent.action.APPWIDGET_VISIBILITY_CHANGED"

.field public static final OPTION_WIDGET_DEMO_MODE:Ljava/lang/String; = "epdlauncher.widget.demomode"

.field public static final OPTION_WIDGET_DISPLAY:Ljava/lang/String; = "epdlauncher.widget.display"

.field public static final OPTION_WIDGET_OLD_ID:Ljava/lang/String; = "epdlauncher.widget.oldwidgetid"

.field public static final OPTION_WIDGET_PRIVACY:Ljava/lang/String; = "epdlauncher.widget.private"

.field public static final OPTION_WIDGET_SIZE:Ljava/lang/String; = "epdlauncher.widget.size"

.field public static final OPTION_WIDGET_THEME:Ljava/lang/String; = "epdlauncher.widget.theme"

.field public static final WIDGET_BACK_SCREEN:I = 0x0

.field public static final WIDGET_FRONT_SCREEN:I = 0x1

.field public static final WIDGET_PRIVACY_STATE_PRIVATE:I = 0x1

.field public static final WIDGET_PRIVACY_STATE_PUBLIC:I = 0x0

.field public static final WIDGET_SIZE_EXTRA_LARGE:I = 0x8

.field public static final WIDGET_SIZE_FULL_SCREEN:I = 0x10

.field public static final WIDGET_SIZE_LARGE:I = 0x0

.field public static final WIDGET_SIZE_LARGE_PLUS:I = 0x5

.field public static final WIDGET_SIZE_MEDIUM:I = 0x1

.field public static final WIDGET_SIZE_MEDIUM_HALF:I = 0x2

.field public static final WIDGET_SIZE_SMALL:I = 0x3

.field public static final WIDGET_SIZE_TINY:I = 0x4

.field public static final WIDGET_THEME_BLACK:I = 0x0

.field public static final WIDGET_THEME_WHITE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/yotadevices/sdk/EpdConstants;


# direct methods
.method public constructor <init>(Lcom/yotadevices/sdk/EpdConstants;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yotadevices/sdk/EpdConstants;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yotadevices/sdk/EpdConstants$EpdLauncherConstants;->this$0:Lcom/yotadevices/sdk/EpdConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
