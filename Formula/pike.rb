# Generated for each release; edits here are overwritten by the next.
class Pike < Formula
  desc "Pi coding agent with a set of extensions built in, as one executable"
  homepage "https://github.com/voidwarriorchan/pike"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.0/pike-darwin-arm64.tar.gz"
      sha256 "62bebf2c43033cf9456fbc43ea966e1398b069743c88eddc3992955b03547ebd"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.0/pike-darwin-x64.tar.gz"
      sha256 "c7c8789d253438599c7e418c360cb102da3f968859fa512062cbf85340223c45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.0/pike-linux-arm64.tar.gz"
      sha256 "4b87fba1a2da8fb085546dd0bc0f7713ce54d6863f927b8350986016353e86cd"
    end
    on_intel do
      url "https://github.com/voidwarriorchan/pike/releases/download/v0.1.0/pike-linux-x64.tar.gz"
      sha256 "3cee63bcb982250ff37b41942f04abedee0846ef25ec75688bb9245b151d39f1"
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
