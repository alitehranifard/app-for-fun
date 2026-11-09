Add-Type -AssemblyName PresentationFramework, PresentationCore

$quotes = @(
    @{ Text = "Discipline is choosing between what you want now and what you want most."; Author = "Abraham Lincoln"; Tag = "DISCIPLINE" },
    @{ Text = "Success is the sum of small efforts, repeated day in and day out."; Author = "Robert Collier"; Tag = "CONSISTENCY" },
    @{ Text = "You do not have to be extreme. Just consistent."; Author = "Unknown"; Tag = "CONSISTENCY" },
    @{ Text = "A little progress each day adds up to big results."; Author = "Satya Nani"; Tag = "PROGRESS" },
    @{ Text = "The secret of getting ahead is getting started."; Author = "Mark Twain"; Tag = "ACTION" },
    @{ Text = "We are what we repeatedly do. Excellence, then, is a habit."; Author = "Will Durant"; Tag = "HABITS" },
    @{ Text = "Do something today that your future self will thank you for."; Author = "Sean Patrick Flanery"; Tag = "ACTION" },
    @{ Text = "The pain of discipline weighs ounces; the pain of regret weighs tons."; Author = "Jim Rohn"; Tag = "DISCIPLINE" },
    @{ Text = "Great things are done by a series of small things brought together."; Author = "Vincent van Gogh"; Tag = "PROGRESS" },
    @{ Text = "Start where you are. Use what you have. Do what you can."; Author = "Arthur Ashe"; Tag = "COURAGE" },
    @{ Text = "The future depends on what you do today."; Author = "Mahatma Gandhi"; Tag = "FOCUS" },
    @{ Text = "Motivation gets you going, but discipline keeps you growing."; Author = "John C. Maxwell"; Tag = "DISCIPLINE" },
    @{ Text = "It always seems impossible until it is done."; Author = "Nelson Mandela"; Tag = "COURAGE" },
    @{ Text = "Well done is better than well said."; Author = "Benjamin Franklin"; Tag = "ACTION" },
    @{ Text = "Your direction is more important than your speed."; Author = "Richard L. Evans"; Tag = "FOCUS" },
    @{ Text = "Small deeds done are better than great deeds planned."; Author = "Peter Marshall"; Tag = "ACTION" },
    @{ Text = "You will never always be motivated, so you must learn to be disciplined."; Author = "Unknown"; Tag = "DISCIPLINE" },
    @{ Text = "The best way out is always through."; Author = "Robert Frost"; Tag = "COURAGE" },
    @{ Text = "Keep the promise you made to yourself this morning."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "A focused hour can change the direction of an entire day."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Your habits are quietly building the life you will live."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Begin before you feel completely ready."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Consistency turns ordinary days into extraordinary results."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "One difficult choice today can make tomorrow much easier."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Protect your attention; it is shaping your future."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Slow progress still carries you forward."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Courage often looks like trying one more time."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Make the next choice a good one."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "The work you repeat becomes the person you become."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Do not negotiate with the goal you truly want."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "A clear priority makes difficult decisions simpler."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "You only need enough courage for the next step."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "What feels small today may become your turning point."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Build momentum by finishing one useful thing."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Reliable effort beats occasional intensity."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Your routine should support you when motivation cannot."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Choose the discomfort that leads somewhere worthwhile."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Give your best energy to what matters most."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Every completed step is evidence that you can continue."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "The brave decision is often the honest one."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Action creates answers that thinking alone cannot."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "A good day begins with one deliberate choice."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Return to the work, even after an imperfect day."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Self-respect grows each time you follow through."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Where attention goes, effort follows."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "You are allowed to grow at a sustainable pace."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Fear can come along, but it does not get to lead."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Reduce the distance between deciding and doing."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Design your environment to make good choices easier."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Show up often enough and improvement becomes inevitable."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Discipline is a form of care for your future self."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Focus is saying no to everything that steals the moment."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Do not dismiss the power of another honest attempt."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Progress becomes visible after patience has done its work."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Start with the task you have been avoiding."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Your smallest repeated behavior can reshape your future."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Ordinary effort becomes powerful when it is repeated."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Finish what matters before rewarding what distracts."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "A quiet mind can hear the next right move."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "There is strength in being willing to begin again."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Measure progress by direction, not perfection."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "A five-minute start is stronger than a perfect plan."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Make excellence familiar through repetition."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Keep going long enough to meet the stronger version of you."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "The standard you keep in private shapes your public results."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Decide what deserves your full presence."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "You can be uncertain and still move forward."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Small wins teach your mind to trust your effort."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Stop waiting for momentum; create it."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Prepare tonight for the person you want to be tomorrow."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Consistency is confidence earned over time."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Your feelings are real, but they do not have to make every decision."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "One meaningful goal deserves more attention than ten distractions."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Bravery begins when excuses end."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "The climb counts even when the summit is not yet visible."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Turn intention into movement before doubt gets louder."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Good habits make hard days less expensive."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Do the basics well, then do them again."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Trade short comfort for lasting pride."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Clarity grows when you remove what does not matter."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Confidence often arrives after the courageous act."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "A setback is a moment, not an identity."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "Give the idea a chance by putting it into motion."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "The right routine protects your goals from your moods."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "A steady pace can carry an ambitious dream."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Do what needs doing, especially when nobody is watching."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Be fully where your feet are."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "You become more capable each time you face what is difficult."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Keep collecting small proofs of progress."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "A decision becomes real when behavior changes."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Practice the identity you want to keep."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Results respect the person who returns every day."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Control the next hour and the day begins to change."; Author = "Heavy Talks"; Tag = "DISCIPLINE" },
    @{ Text = "Your best work needs space, silence, and commitment."; Author = "Heavy Talks"; Tag = "FOCUS" },
    @{ Text = "Stand up once more than life asks you to sit down."; Author = "Heavy Talks"; Tag = "COURAGE" },
    @{ Text = "Improvement is happening even before it becomes obvious."; Author = "Heavy Talks"; Tag = "PROGRESS" },
    @{ Text = "The next useful action is enough for now."; Author = "Heavy Talks"; Tag = "ACTION" },
    @{ Text = "Structure creates freedom for the things you value."; Author = "Heavy Talks"; Tag = "HABITS" },
    @{ Text = "Stay patient with results and impatient with excuses."; Author = "Heavy Talks"; Tag = "CONSISTENCY" },
    @{ Text = "Become someone your goals can depend on."; Author = "Heavy Talks"; Tag = "DISCIPLINE" }
)

[xml]$xaml = @"
<Window xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        Title="Heavy Talks" Width="920" Height="620" MinWidth="720" MinHeight="500"
        WindowStartupLocation="CenterScreen" Background="#07111F" FontFamily="Segoe UI"
        ResizeMode="CanResizeWithGrip">
    <Window.Resources>
        <Style x:Key="SoftButton" TargetType="Button">
            <Setter Property="Foreground" Value="#E7F1FF"/>
            <Setter Property="Background" Value="#111F34"/>
            <Setter Property="BorderBrush" Value="#274263"/>
            <Setter Property="BorderThickness" Value="1"/>
            <Setter Property="Padding" Value="18,10"/>
            <Setter Property="FontSize" Value="13"/>
            <Setter Property="Cursor" Value="Hand"/>
            <Setter Property="Template">
                <Setter.Value>
                    <ControlTemplate TargetType="Button">
                        <Border x:Name="Border" Background="{TemplateBinding Background}" BorderBrush="{TemplateBinding BorderBrush}"
                                BorderThickness="{TemplateBinding BorderThickness}" CornerRadius="8" Padding="{TemplateBinding Padding}">
                            <ContentPresenter HorizontalAlignment="Center" VerticalAlignment="Center"/>
                        </Border>
                        <ControlTemplate.Triggers>
                            <Trigger Property="IsMouseOver" Value="True"><Setter TargetName="Border" Property="Background" Value="#19304F"/></Trigger>
                            <Trigger Property="IsPressed" Value="True"><Setter TargetName="Border" Property="Background" Value="#0B182A"/></Trigger>
                        </ControlTemplate.Triggers>
                    </ControlTemplate>
                </Setter.Value>
            </Setter>
        </Style>
    </Window.Resources>
    <Grid>
        <Grid.Background>
            <RadialGradientBrush Center="0.25,0.15" GradientOrigin="0.25,0.15" RadiusX="0.85" RadiusY="0.85">
                <GradientStop Color="#15345B" Offset="0"/><GradientStop Color="#0A192C" Offset="0.48"/><GradientStop Color="#050B14" Offset="1"/>
            </RadialGradientBrush>
        </Grid.Background>
        <Grid.RowDefinitions><RowDefinition Height="Auto"/><RowDefinition Height="*"/><RowDefinition Height="Auto"/></Grid.RowDefinitions>

        <Grid Margin="42,30,42,0">
            <TextBlock Text="H E A V Y   T A L K S" Foreground="#62B7FF" FontSize="13" FontWeight="SemiBold"/>
            <TextBlock Text="A thought for this moment" Foreground="#7892B2" FontSize="12" HorizontalAlignment="Right"/>
        </Grid>

        <Border Grid.Row="1" Margin="42,34,42,24" Background="#E8081424" BorderBrush="#294566" BorderThickness="1" CornerRadius="22">
            <Grid Margin="54,44">
                <Grid.RowDefinitions><RowDefinition Height="Auto"/><RowDefinition Height="*"/><RowDefinition Height="Auto"/></Grid.RowDefinitions>
                <Border Background="#122B48" CornerRadius="12" HorizontalAlignment="Left" Padding="12,6">
                    <TextBlock x:Name="TagText" Foreground="#68C1FF" FontSize="11" FontWeight="Bold"/>
                </Border>
                <StackPanel x:Name="QuotePanel" Grid.Row="1" VerticalAlignment="Center" Opacity="1">
                    <TextBlock Text="&#x201C;" Foreground="#4DAEFF" FontFamily="Georgia" FontSize="58" Height="55"/>
                    <TextBlock x:Name="QuoteText" Foreground="#EDF6FF" FontFamily="Georgia" FontSize="31" FontWeight="Normal"
                               LineHeight="44" TextWrapping="Wrap" MaxWidth="690" HorizontalAlignment="Left"/>
                    <TextBlock x:Name="AuthorText" Foreground="#88A3C3" FontSize="14" Margin="2,24,0,0"/>
                </StackPanel>
                <Grid Grid.Row="2" Margin="0,25,0,0">
                    <TextBlock x:Name="CountText" Foreground="#587391" FontSize="11" VerticalAlignment="Center"/>
                    <StackPanel Orientation="Horizontal" HorizontalAlignment="Right">
                        <Button x:Name="CopyButton" Content="Copy quote" Style="{StaticResource SoftButton}" Margin="0,0,10,0"/>
                        <Button x:Name="NextButton" Content="New thought  &gt;" Style="{StaticResource SoftButton}" Background="#3A9EF0" Foreground="#03101D" BorderBrush="#55B6FF" FontWeight="SemiBold"/>
                    </StackPanel>
                </Grid>
            </Grid>
        </Border>

        <Grid Grid.Row="2" Margin="42,0,42,26">
            <TextBlock Text="SPACE  new thought   |   CTRL+C  copy" Foreground="#587391" FontSize="11"/>
            <TextBlock Text="Keep showing up." Foreground="#7892B2" FontSize="11" HorizontalAlignment="Right" FontStyle="Italic"/>
        </Grid>
    </Grid>
</Window>
"@

$reader = New-Object System.Xml.XmlNodeReader $xaml
$window = [Windows.Markup.XamlReader]::Load($reader)
$quoteText = $window.FindName("QuoteText")
$authorText = $window.FindName("AuthorText")
$tagText = $window.FindName("TagText")
$countText = $window.FindName("CountText")
$quotePanel = $window.FindName("QuotePanel")
$nextButton = $window.FindName("NextButton")
$copyButton = $window.FindName("CopyButton")
$script:currentIndex = -1

function Show-NewQuote {
    $next = Get-Random -Minimum 0 -Maximum $quotes.Count
    if ($quotes.Count -gt 1) { while ($next -eq $script:currentIndex) { $next = Get-Random -Minimum 0 -Maximum $quotes.Count } }
    $script:currentIndex = $next
    $item = $quotes[$next]

    # Update first so the quote is never lost when the animation callback scope ends.
    $quotePanel.BeginAnimation([Windows.UIElement]::OpacityProperty, $null)
    $quotePanel.Opacity = 0
    $quoteText.Text = $item.Text
    $authorText.Text = "-  " + $item.Author
    $tagText.Text = $item.Tag
    $countText.Text = "THOUGHT " + ($script:currentIndex + 1).ToString("00") + " / " + $quotes.Count.ToString("00")

    $fadeIn = New-Object Windows.Media.Animation.DoubleAnimation
    $fadeIn.From = 0
    $fadeIn.To = 1
    $fadeIn.Duration = [TimeSpan]::FromMilliseconds(260)
    $quotePanel.BeginAnimation([Windows.UIElement]::OpacityProperty, $fadeIn)
}

function Copy-CurrentQuote {
    if ($script:currentIndex -lt 0) { return }
    $item = $quotes[$script:currentIndex]
    [Windows.Clipboard]::SetText('"' + $item.Text + '" - ' + $item.Author)
    $copyButton.Content = "Copied!"
    $timer = New-Object Windows.Threading.DispatcherTimer
    $timer.Interval = [TimeSpan]::FromSeconds(1.2)
    $timer.Add_Tick({ $copyButton.Content = "Copy quote"; $this.Stop() })
    $timer.Start()
}

$nextButton.Add_Click({ Show-NewQuote })
$copyButton.Add_Click({ Copy-CurrentQuote })
$window.Add_KeyDown({
    if ($_.Key -eq [Windows.Input.Key]::Space) { Show-NewQuote; $_.Handled = $true }
    elseif ($_.Key -eq [Windows.Input.Key]::C -and ([Windows.Input.Keyboard]::Modifiers -band [Windows.Input.ModifierKeys]::Control)) { Copy-CurrentQuote; $_.Handled = $true }
})
$window.Add_ContentRendered({ Show-NewQuote })
[void]$window.ShowDialog()

