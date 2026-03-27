class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2680.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2680.0/lightdash-cli-0.2680.0-macos-arm64.tar.gz"
      sha256 "019ee77797481023921e7894449cb93dab69b1f45fb174814c3645a76c66fd06"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2680.0/lightdash-cli-0.2680.0-macos-x64.tar.gz"
      sha256 "80dde288882bc94a350301e82027c7b9bec7068b3f04df6c3ee4b3272db368fa"
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
