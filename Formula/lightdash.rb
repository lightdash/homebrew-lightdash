class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2931.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2931.0/lightdash-cli-0.2931.0-macos-arm64.tar.gz"
      sha256 "3cfbb1018df43da5577448ad57fdf2c4c997b34839724129814eb44ef94ac3c3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2931.0/lightdash-cli-0.2931.0-macos-x64.tar.gz"
      sha256 "00ac65618a7999b9ab9b54a67707b70caa18b1a5a46fd4a98f5069e2d094870d"
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
