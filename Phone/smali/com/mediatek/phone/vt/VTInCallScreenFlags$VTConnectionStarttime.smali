.class public Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;
.super Ljava/lang/Object;
.source "VTInCallScreenFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/vt/VTInCallScreenFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VTConnectionStarttime"
.end annotation


# instance fields
.field public mConnection:Lcom/android/internal/telephony/Connection;

.field public mStarttime:J

.field final synthetic this$0:Lcom/mediatek/phone/vt/VTInCallScreenFlags;


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/vt/VTInCallScreenFlags;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->this$0:Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->reset()V

    .line 167
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .prologue
    .line 173
    const-string v0, "VTConnectionStarttime"

    const-string v1, "reset..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 175
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 176
    return-void
.end method
