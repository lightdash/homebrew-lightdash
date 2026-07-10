class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3363.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3363.0/lightdash-cli-0.3363.0-macos-arm64.tar.gz"
      sha256 "61f38597ba32dd5423129f0fd2e662a4f0490b2760b3f2c37ab006706971ab77"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3363.0/lightdash-cli-0.3363.0-macos-x64.tar.gz"
      sha256 "bdb85e4de110be721377b2dffece85c04fcf1d4d1fd590782b0ff5b16f622d2a"
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
