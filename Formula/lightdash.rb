class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2473.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2473.2/lightdash-cli-0.2473.2-macos-arm64.tar.gz"
      sha256 "b438e10399a722695dddaaab9f21e69fc6fbd9cb3675ef069074e58c52cfa66e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2473.2/lightdash-cli-0.2473.2-macos-x64.tar.gz"
      sha256 "d48cc1da8abae16d0206090cfb412dbbff68759d408cd07c2570d9b431d55f84"
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
