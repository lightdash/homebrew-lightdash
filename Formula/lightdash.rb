class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2736.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2736.0/lightdash-cli-0.2736.0-macos-arm64.tar.gz"
      sha256 "10c473ccf0a5f4711a5d0610c7e35941a4d92d60eade37ef849482bdbc18f406"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2736.0/lightdash-cli-0.2736.0-macos-x64.tar.gz"
      sha256 "634b56093b4a18ecd4ac59afb496a500bad9199ac3a8c8393c26c773389045f2"
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
