class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3244.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3244.1/lightdash-cli-0.3244.1-macos-arm64.tar.gz"
      sha256 "5329594503b5bed20d07099ed8d0289c4c90ceaf914ad710bffaf69e44543b95"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3244.1/lightdash-cli-0.3244.1-macos-x64.tar.gz"
      sha256 "6cf026eee3429d778385f0ac4d0e67096c91676db3e429d9e7605fa7517d493e"
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
