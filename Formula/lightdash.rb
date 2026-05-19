class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2976.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.1/lightdash-cli-0.2976.1-macos-arm64.tar.gz"
      sha256 "481e8bcab853203a5ca994e6936f7136975eb0b823eaa49b85fc05dbc9452a58"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2976.1/lightdash-cli-0.2976.1-macos-x64.tar.gz"
      sha256 "39133ec7a6c8349eb47ec6936a94f6adc6f686172648be9b5d85c87756cfcc6d"
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
