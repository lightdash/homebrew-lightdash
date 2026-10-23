class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.43.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.43.0/lightdash-cli-3.43.0-macos-arm64.tar.gz"
      sha256 "49dbfa757bc2181cc9b1a1fbc6e00b932f1fc40c2ccb1084e19a0746b34ebc52"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.43.0/lightdash-cli-3.43.0-macos-x64.tar.gz"
      sha256 "2cb03a58835f3723b16f178567a2cbf62105d9bf01c8189b4654d2cad2840ca6"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.43.0/lightdash-cli-3.43.0-linux-x64.tar.gz"
    sha256 "fa06a808275f9413331376e359e28d465809068b355b0ebce1573ec1433a953c"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
