class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3465.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3465.0/lightdash-cli-0.3465.0-macos-arm64.tar.gz"
      sha256 "23db884b507a36c27eceb45d7780fefe6f63f4e2acfa334d84ca0758777e7c70"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3465.0/lightdash-cli-0.3465.0-macos-x64.tar.gz"
      sha256 "e38e4f186173abd271ebd03af41da6312c22892a06722d0123268bd115f22c92"
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
