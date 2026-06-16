class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3174.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3174.0/lightdash-cli-0.3174.0-macos-arm64.tar.gz"
      sha256 "4d0d6024b8aa8130667c64783316453173403b2e8f288e2ba62794401409985a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3174.0/lightdash-cli-0.3174.0-macos-x64.tar.gz"
      sha256 "edfdfd4c39787dfef4b7042813afb70fd5803fd4ab66b9e5a4a4f800723bac9f"
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
