class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2418.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.4/lightdash-cli-0.2418.4-macos-arm64.tar.gz"
      sha256 "64daa8343cdf5b4837137e873e7ee12443e865e37f6575f73489ccb86aa5b77e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2418.4/lightdash-cli-0.2418.4-macos-x64.tar.gz"
      sha256 "df9adbc1fe90ff37745c810ab1d66b0a3d6274747820d0bba31b51ec3ed677bf"
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
