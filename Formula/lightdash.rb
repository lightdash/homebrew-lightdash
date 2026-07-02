class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3289.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3289.1/lightdash-cli-0.3289.1-macos-arm64.tar.gz"
      sha256 "9ce0315a3672fb3f7de7a754b52c4afd46fec2d505974e9be0f90ef94f73fa4d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3289.1/lightdash-cli-0.3289.1-macos-x64.tar.gz"
      sha256 "854929a8f71211c859d50aff6014a4a713b8d6972f6c46648926e3df724b877c"
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
