class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2342.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2342.2/lightdash-cli-0.2342.2-macos-arm64.tar.gz"
      sha256 "54c1ddce63d408acbc11f5dc0d79e013a816e61e235003b279144c1ee6217d3a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2342.2/lightdash-cli-0.2342.2-macos-x64.tar.gz"
      sha256 "db9bdfb74c9adab177ecf3ff913efc52c556f4250c5becdcc4603e775544b7b3"
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
