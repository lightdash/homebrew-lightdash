class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.9.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.5/lightdash-cli-2.9.5-macos-arm64.tar.gz"
      sha256 "1e43fc5cf8d0352d2207bfc550065be1101cd279c9945c7a327c608cbd31f5e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.9.5/lightdash-cli-2.9.5-macos-x64.tar.gz"
      sha256 "8ed193e2950eddce01a51340480f6bcc7138005ba4e9d43f7db71bb212574fcb"
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
