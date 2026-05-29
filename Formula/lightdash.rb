class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3049.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.0/lightdash-cli-0.3049.0-macos-arm64.tar.gz"
      sha256 "36c6f80d85b43ca580628e00074579997873150e91017fdc568d7cb75da5cb72"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3049.0/lightdash-cli-0.3049.0-macos-x64.tar.gz"
      sha256 "df7f9efec3eaf801c086dda58bcfcdcaaa0220066d25d0119c707e6d51901f9d"
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
