class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2613.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2613.0/lightdash-cli-0.2613.0-macos-arm64.tar.gz"
      sha256 "e102fce451a7ce4f45e4b0ba4c78d800b86e5d34369adc25dda2d8d74cecab29"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2613.0/lightdash-cli-0.2613.0-macos-x64.tar.gz"
      sha256 "56a23337d61b5ab04195b2437cc08e6564c467210bd723483ac6cf5a426a08dd"
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
