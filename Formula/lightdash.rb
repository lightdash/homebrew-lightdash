class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2724.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.1/lightdash-cli-0.2724.1-macos-arm64.tar.gz"
      sha256 "6a1295c8c6ede0ef7fa7d52aeba5c15c02af49c298b82e0077ab224cc0f16588"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2724.1/lightdash-cli-0.2724.1-macos-x64.tar.gz"
      sha256 "39440366960a39ecd959f72050c86bdf9a9d2183c364a826a28ee95f1c12fc07"
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
