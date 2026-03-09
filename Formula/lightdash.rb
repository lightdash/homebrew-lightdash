class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2591.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2591.0/lightdash-cli-0.2591.0-macos-arm64.tar.gz"
      sha256 "08f3f8f3cc4a735b28261874e44037b24999d874518e0967e6f971135c097ca7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2591.0/lightdash-cli-0.2591.0-macos-x64.tar.gz"
      sha256 "92c98580f29a7c9f83ed91405a4059576adff838fdbcac30309ebc2b6c6c9f50"
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
