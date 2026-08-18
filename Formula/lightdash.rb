class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.194.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.194.0/lightdash-cli-1.194.0-macos-arm64.tar.gz"
      sha256 "3acb34e38e5a917efa6f843c4a924a5d84a76547cda7145dd46e2eff0fbe5da6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.194.0/lightdash-cli-1.194.0-macos-x64.tar.gz"
      sha256 "4c5f80b753c380765942334c077b59bf4bf39bea5c5bbb9440a8a1ba84342fab"
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
