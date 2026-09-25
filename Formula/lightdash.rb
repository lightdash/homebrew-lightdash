class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.344.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.3/lightdash-cli-2.344.3-macos-arm64.tar.gz"
      sha256 "1a6b9cf2d6867bf4d240820cd4d9043766414921df2dbe37a480b2f2dd0e127e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.344.3/lightdash-cli-2.344.3-macos-x64.tar.gz"
      sha256 "24a94cf6e5c23cbc704c7eed3913a8ba08f50590da5bf93ae16e8b031bdac0fd"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.344.3/lightdash-cli-2.344.3-linux-x64.tar.gz"
    sha256 "f8508444d907f891d723853638956ee8322afb852d539cc1e4d9ab63cd5ef20b"

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
