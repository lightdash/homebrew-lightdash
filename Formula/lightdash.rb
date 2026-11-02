class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.122.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.122.2/lightdash-cli-3.122.2-macos-arm64.tar.gz"
      sha256 "f514e90a0a3d8c86273b46194467188285b1b1c68ed56e9a5cd5e6490e4b25db"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.122.2/lightdash-cli-3.122.2-macos-x64.tar.gz"
      sha256 "a0d9d86abc88316f69a26885acffec0094f9ff2fec47855c17cb64f10f66d998"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.122.2/lightdash-cli-3.122.2-linux-x64.tar.gz"
    sha256 "e77b9db0b78dbc1742424fa50a75428adca9c30f119ff807131d585d56758303"

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
