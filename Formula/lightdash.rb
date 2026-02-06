class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2434.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2434.2/lightdash-cli-0.2434.2-macos-arm64.tar.gz"
      sha256 "2f1f88ad05c7e79f1bbcea2822f0b321b4e874164a961852a63de9216d5a47e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2434.2/lightdash-cli-0.2434.2-macos-x64.tar.gz"
      sha256 "23e02a20773b6a017e5a567a668fb1978edaf20a05ba179dac9385573357ddbc"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
