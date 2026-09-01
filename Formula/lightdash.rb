class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.68.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.68.0/lightdash-cli-2.68.0-macos-arm64.tar.gz"
      sha256 "47cf48693e0f8d34bb5117e5b2b9b73e39ddd189b3188df9ed21c3d7910cd540"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.68.0/lightdash-cli-2.68.0-macos-x64.tar.gz"
      sha256 "b9e53bdff696304b171684987eca9773d9511623388593720c2df08fa5b257cc"
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
