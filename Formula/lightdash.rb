class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.392.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.392.0/lightdash-cli-2.392.0-macos-arm64.tar.gz"
      sha256 "4b0bc302434ab00ccb84d790e2ce3a2c3497c83fcae214808eb94543105e9dfa"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.392.0/lightdash-cli-2.392.0-macos-x64.tar.gz"
      sha256 "ff591061f365b2ab6bf165d5ac78cf9672008455113d3ca8f94d0419973cabae"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.392.0/lightdash-cli-2.392.0-linux-x64.tar.gz"
    sha256 "1a2c151d98cf33197f8a9a11401ae4e2d77eda552163935cd89b8bf504642b54"

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
