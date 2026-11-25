# Generated for each release; edits here are overwritten by the next.
class Pike < Formula
  desc "Pi coding agent with a set of extensions built in, as one executable"
  homepage "https://github.com/voidwarriorchan/pike"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.1/pike-darwin-arm64.tar.gz"
      sha256 "6e8ba9c3ac4d7e7ba94580691b1b533795603616a27d71835a934309720521d9"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.1/pike-darwin-x64.tar.gz"
      sha256 "fdeaa374ade55a6851621f1453e3bd2842c7a5e0cd506ae4903ffc1f5124d696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.1/pike-linux-arm64.tar.gz"
      sha256 "6c5fa3edfc11cf2db308c69dd8f4448c4eaa616c6d6378e06cedd3e9d72e93fe"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.1/pike-linux-x64.tar.gz"
      sha256 "b87d95120d148829ad4307ee04bc6170aa67d16112c19f96d47a8ea52e049ee6"
    end
  end

  def install
    (libexec/"pike").install Dir["*"]
    (libexec/"pike/update-command").write "brew upgrade #{full_name}\n"
    bin.install_symlink libexec/"pike/pike"
  end

  test do
    assert_match "pike #{version}", shell_output("#{bin}/pike --version")
  end
end
